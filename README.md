# andreoliwa Formulae

## How do I install these formulae?

`brew install andreoliwa/formulae/<formula>`

Or `brew tap andreoliwa/formulae` and then `brew install <formula>`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

Useful links:

- [Homebrew](https://github.com/Homebrew/)
- [homebrew-core/jrnl.rb at master · Homebrew/homebrew-core](https://github.com/Homebrew/homebrew-core/blob/master/Formula/jrnl.rb)
- [Formula Cookbook — Homebrew Documentation](https://docs.brew.sh/Formula-Cookbook)
- [Python for Formula Authors — Homebrew Documentation](https://docs.brew.sh/Python-for-Formula-Authors)
- [Bottles (Binary Packages) — Homebrew Documentation](https://docs.brew.sh/Bottles)
- [Fix casks with `depends_on` that reference pre-Yosemite · Issue #58046 · Homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask/issues/58046)
- [Homebrew tap with bottles uploaded to GitHub Releases — Homebrew](https://brew.sh/2020/11/18/homebrew-tap-with-bottles-uploaded-to-github-releases/)
- [Python — Homebrew Documentation](https://docs.brew.sh/Homebrew-and-Python)
- [Add a test to the formula](https://docs.brew.sh/Formula-Cookbook#add-a-test-to-the-formula)

## Local development

To update Python packages in a formula:

```shell
invoke brew-python --help
```

To install, test, debug a formula:

```shell
invoke brew-install --help
```

Steps to update the version:

1. Open [PyPI](https://pypi.org/project/nitpick/).
2. Update `url` and `sha256` in the Formula.
3. Run `invoke brew-python`.
4. Create a pull request and wait for the green status.
5. Rebase all commits into one: it will be pushed to `master` by the workflow.
6. Choose the `pr-pull` label and wait.
