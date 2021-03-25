"""Invoke tasks.

- https://github.com/pyinvoke/invoke
- http://docs.pyinvoke.org/en/stable/api/runners.html#invoke.runners.Runner.run
"""
from invoke import task, Exit
from pathlib import Path

# Package config by formula
PACKAGES_BY_FORMULA = {
    "nitpick": {
        "extra": [
            # FIXME: "cryptography", "pyOpenSSL"
        ],
        "exclude": [],
    }
}


def choose_formula(c) -> str:
    """Choose a formula from the formulae."""
    rv = c.run(
        "fd .rb Formula/ | rg -o 'Formula/(.+)\.rb' -r '$1' | fzf --reverse --height 40% --select-1"
    ).stdout.strip()
    if not rv:
        raise Exit()
    return rv


def formula_name_with_tap(formula: str) -> str:
    """Full name for a formula."""
    user = Path.cwd().parent.name
    repo = Path.cwd().name.replace("homebrew-", "")
    return f"{user}/{repo}/{formula}"


@task
def brew_install(c, interactive=False, head=False, debug=False):
    """Install a Homebrew formula."""
    formula = choose_formula(c)
    full = formula_name_with_tap(formula)

    # Try to uninstall first
    c.run(f"brew uninstall {full}", warn=True)

    cmd = ["brew install"]
    if head:
        cmd.append("--HEAD")
    if interactive:
        cmd.append("--interactive")
    if debug:
        cmd.append("--debug")
    cmd.append(full)
    c.run(" ".join(cmd))


@task
def brew_python(c, package=""):
    """Update Python resources."""
    formula = choose_formula(c)
    full = formula_name_with_tap(formula)
    package = package or formula

    cmd = ["brew", "update-python-resources", full, "--package-name", package]

    formula_config = PACKAGES_BY_FORMULA.get(formula, {})
    extra = formula_config["extra"]
    if extra:
        cmd.extend(["--extra-packages", ",".join(extra)])
    exclude = formula_config["exclude"]
    if exclude:
        cmd.extend(["--exclude-packages", ",".join(exclude)])

    c.run(" ".join(cmd))
