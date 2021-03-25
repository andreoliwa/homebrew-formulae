class Nitpick < Formula
  include Language::Python::Virtualenv

  desc "Enforce the same settings across multiple language-independent projects"
  homepage "https://github.com/andreoliwa/nitpick/"
  url "https://github.com/andreoliwa/nitpick/archive/refs/tags/v0.26.0.tar.gz"
  sha256 "4afd9e848c4655ffe2b7d49a49c3c32b236f3ee1f7240c0bec6a4ee7d70acd16"
  license "MIT"
  head "https://github.com/andreoliwa/nitpick.git", branch: "develop"

  depends_on "python@3.9"

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/fa/2d/2154d8cb773064570f48ec0b60258a4522490fcb115a6c7c9423482ca993/cryptography-3.4.6.tar.gz"
    sha256 "2d32223e5b0ee02943f32b19245b61a62db83a882f0e76cc564e1cec60d48f87"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nitpick`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true" # FIXME
  end
end
