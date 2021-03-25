"""Invoke tasks.

- https://github.com/pyinvoke/invoke
- http://docs.pyinvoke.org/en/stable/api/runners.html#invoke.runners.Runner.run
"""
from invoke import task


@task
def brew_install(c, interactive=False, head=False, debug=False):
    """Install a Homebrew formula."""
    formula = c.run(
        "fd .rb Formula/ | rg -o 'Formula/(.+)\.rb' -r '$1' | fzf --reverse --height 40% --select-1"
    ).stdout.strip()
    cmd = ["brew install"]
    if head:
        cmd.append("--HEAD")
    if interactive:
        cmd.append("--interactive")
    if debug:
        cmd.append("--debug")
    cmd.append(formula)
    c.run(" ".join(cmd))
