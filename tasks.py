"""Invoke tasks.

- https://github.com/pyinvoke/invoke
- http://docs.pyinvoke.org/en/stable/api/runners.html#invoke.runners.Runner.run
"""
from invoke import task, Exit
from pathlib import Path

# This is needed for linuxbrew
EXTRA_PACKAGES = {"cryptography"}

# Exclude all other packages, because they are already installed with nitpick's .tar.gz
# TODO: This list is manually populated; do it automatically somehow
EXCLUDE_PACKAGES = {
    "attrs",
    "autorepr",
    "cachy",
    "certifi",
    "cffi",
    "chardet",
    "click",
    "configupdater",
    "dictdiffer",
    "flake8",
    "identify",
    "idna",
    "jmespath",
    "loguru",
    "marshmallow-polyfield",
    "marshmallow",
    "mccabe",
    "more-itertools",
    "more",
    "pluggy",
    "pycodestyle",
    "pycparser",
    "pydantic",
    "pyflakes",
    "python-slugify",
    "python",
    "requests",
    "ruamel-yaml-clib",
    "ruamel-yaml",
    "ruamel",
    "sortedcontainers",
    "text-unidecode",
    "text",
    "toml",
    "tomlkit",
    "typing-extensions",
    "typing",
    "urllib3",
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
    cmd = ["brew install"]
    if head:
        cmd.append("--HEAD")
    if interactive:
        cmd.append("--interactive")
    if debug:
        cmd.append("--debug")
    cmd.append(formula)
    c.run(" ".join(cmd))


@task
def brew_python(c, package=""):
    """Update Python resources."""
    formula = choose_formula(c)
    full = formula_name_with_tap(formula)
    package = package or formula

    c.run(
        f"brew update-python-resources {full} --package-name {package}"
        f" --extra-packages {','.join(EXTRA_PACKAGES)}"
        f" --exclude-packages {','.join(EXCLUDE_PACKAGES)}"
    )
