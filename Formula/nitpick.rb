class Nitpick < Formula
  include Language::Python::Virtualenv

  desc "Enforce the same settings across multiple language-independent projects"
  homepage "https://github.com/andreoliwa/nitpick/"
  url "https://files.pythonhosted.org/packages/10/8a/c255ab2cc703ede9b6cac661d09ec8953d457c4962d84083a67acf962744/nitpick-0.31.0.tar.gz"
  sha256 "9107b92dea55e8f8fca81d96ce133e3ac80035493259d8e6fb0ba409a23ebe55"
  license "MIT"
  head "https://github.com/andreoliwa/nitpick.git", branch: "develop"

  bottle do
    root_url "https://github.com/andreoliwa/homebrew-formulae/releases/download/nitpick-0.26.0"
    rebuild 1
    sha256 cellar: :any,                 catalina:     "060f39b3bf30d7bca66096ab050f9c2098ebee10d0668f8d8b7c1b6cbfe5f5f3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dde46a2b84567458189c8a1db3dd8417805c9906d310c61171297f4600f7d163"
  end

  # Some dependencies below were added to fix errors on the workflow:
  depends_on "cmake" # Error: No available formula or cask with the name "cmake".
  depends_on "ninja" # Error: No available formula or cask with the name "ninja".
  depends_on "python@3.9"
  depends_on "rust"
  depends_on "sphinx-doc" # Error: No available formula or cask with the name "sphinx-doc".

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/d7/77/ebb15fc26d0f815839ecd897b919ed6d85c050feeb83e100e020df9153d2/attrs-21.4.0.tar.gz"
    sha256 "626ba8234211db98e869df76230a137c4c40a12d72445c45d5f5b716f076e2fd"
  end

  resource "autorepr" do
    url "https://files.pythonhosted.org/packages/15/d1/d33a2f69b85af4ac67298bf8d8b41db94363e91a48dbdc95aaf49eca5504/autorepr-0.3.0.tar.gz"
    sha256 "ef770b84793d5433e6bb893054973b8c7ce6b487274f9c3f734f678cae11e85e"
  end

  resource "cachy" do
    url "https://files.pythonhosted.org/packages/a0/0c/45b249b0efce50a430b8810ec34c5f338d853c31c24b0b297597fd28edda/cachy-0.3.0.tar.gz"
    sha256 "186581f4ceb42a0bbe040c407da73c14092379b1e4c0e327fdb72ae4a9b269b1"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/00/9e/92de7e1217ccc3d5f352ba21e52398372525765b2e0c4530e6eb2ba9282a/cffi-1.15.0.tar.gz"
    sha256 "920f0d66a896c2d99f0adbb391f990a84091179542c205fa53ce5787aff87954"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/48/44/76b179e0d1afe6e6a91fd5661c284f60238987f3b42b676d141d01cd5b97/charset-normalizer-2.0.10.tar.gz"
    sha256 "876d180e9d7432c5d1dfd4c5d26b72f099d503e8fcc0feb7532c9289be60fcbd"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "ConfigUpdater" do
    url "https://files.pythonhosted.org/packages/9b/0e/0e730b2b3691f8374a74833a48b90616eb4de61f197d924cebd8d2e07d00/ConfigUpdater-3.0.1.tar.gz"
    sha256 "372a6a6ef598a118ec17927bec9486a7d36f44ccd3e641e879e0bf998b70924e"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/f9/4b/1cf8e281f7ae4046a59e5e39dd7471d46db9f61bb564fddbff9084c4334f/cryptography-36.0.1.tar.gz"
    sha256 "53e5c1dc3d7a953de055d77bef2ff607ceef7a2aac0353b5d630ab67f7423638"
  end

  resource "dictdiffer" do
    url "https://files.pythonhosted.org/packages/61/7b/35cbccb7effc5d7e40f4c55e2b79399e1853041997fcda15c9ff160abba0/dictdiffer-0.9.0.tar.gz"
    sha256 "17bacf5fbfe613ccf1b6d512bd766e6b21fb798822a133aa86098b8ac9997578"
  end

  resource "dpath" do
    url "https://files.pythonhosted.org/packages/d0/d2/219bd67dc31eeb14be02bea9a23d0b16a0236f45504c6963f675c80a8d8c/dpath-2.0.5.tar.gz"
    sha256 "ef74321b01479653c812fee69c53922364614d266a8e804d22058c5c02e5674e"
  end

  resource "flake8" do
    url "https://files.pythonhosted.org/packages/e6/84/d8db922289195c435779b4ca3a3f583f263f87e67954f7b2e83c8da21f48/flake8-4.0.1.tar.gz"
    sha256 "806e034dda44114815e23c16ef92f95c91e4c71100ff52813adf7132a6ad870d"
  end

  resource "flatten-dict" do
    url "https://files.pythonhosted.org/packages/89/c6/5fe21639369f2ea609c964e20870b5c6c98a134ef12af848a7776ddbabe3/flatten-dict-0.4.2.tar.gz"
    sha256 "506a96b6e6f805b81ae46a0f9f31290beb5fa79ded9d80dbe1b7fa236ab43076"
  end

  resource "identify" do
    url "https://files.pythonhosted.org/packages/82/c7/750d9467e90be6c8c8ff94a7aff029ed1229f2d53843ddf8d2b142051c88/identify-2.4.4.tar.gz"
    sha256 "6b4b5031f69c48bf93a646b90de9b381c6b5f560df4cbe0ed3cf7650ae741e4d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/6d/25/0d65383fc7b4f4ce9505d16773b2b2a9f0f465ef00ab337d66afff47594a/loguru-0.5.3.tar.gz"
    sha256 "b28e72ac7a98be3d28ad28570299a393dfcd32e5e3f6a353dec94675767b6319"
  end

  resource "marshmallow" do
    url "https://files.pythonhosted.org/packages/ff/04/9a03e7e8e68b1cee2396f51d41cd8741920a8c7b74b32a9e6b29da56e40f/marshmallow-3.14.1.tar.gz"
    sha256 "4c05c1684e0e97fe779c62b91878f173b937fe097b356cd82f793464f5bc6138"
  end

  resource "marshmallow-polyfield" do
    url "https://files.pythonhosted.org/packages/63/e3/ffe4ca9f8a52ebd1f0a57ba7d9b08dbfb59d280b9274826a5c459f0aff67/marshmallow-polyfield-5.10.tar.gz"
    sha256 "75d0e31b725650e91428f975a66ed30f703cc6f9fcfe45b8436ee6d676921691"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/dc/b5/c216ffeace7b89b7387fe08e1b39a07c6da38ea82c60e2e630dd5883813b/more-itertools-8.12.0.tar.gz"
    sha256 "7dc6ad46f05f545f900dd59e8dfb4e84a4827b97b3cfecb175ea0c7d247f6064"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/a1/16/db2d7de3474b6e37cbb9c008965ee63835bba517e22cdb8c35b5116b5ce1/pluggy-1.0.0.tar.gz"
    sha256 "4224373bacce55f955a878bf9cfa763c1e360858e330072059e10bad68531159"
  end

  resource "pycodestyle" do
    url "https://files.pythonhosted.org/packages/08/dc/b29daf0a202b03f57c19e7295b60d1d5e1281c45a6f5f573e41830819918/pycodestyle-2.8.0.tar.gz"
    sha256 "eddd5847ef438ea1c7870ca7eb78a9d47ce0cdb4851a5523949f2601d0cbbe7f"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "pyflakes" do
    url "https://files.pythonhosted.org/packages/15/60/c577e54518086e98470e9088278247f4af1d39cb43bcbd731e2c307acd6a/pyflakes-2.4.0.tar.gz"
    sha256 "05a85c2872edf37a4ed30b0cce2f6093e1d0581f8c19d7393122da7e25b2b24c"
  end

  resource "python-slugify" do
    url "https://files.pythonhosted.org/packages/bc/a4/57893fbaf7cbf303a4f2307564cf83855a5f2cc34544656e7263125a0d1e/python-slugify-5.0.2.tar.gz"
    sha256 "f13383a0b9fcbe649a1892b9c8eb4f8eab1d6d84b84bb7a624317afa98159cab"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
    sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/2d/b1/b672cbe8be9ea09d85d2be8c3693811362295aa8483849e85b41caaadb85/ruamel.yaml-0.17.20.tar.gz"
    sha256 "4b8a33c1efb2b443a93fcaafcfa4d2e445f8e8c29c528d9f5cdafb7cc9e4004c"
  end

  resource "ruamel.yaml.clib" do
    url "https://files.pythonhosted.org/packages/8b/25/08e5ad2431a028d0723ca5540b3af6a32f58f25e83c6dda4d0fcef7288a3/ruamel.yaml.clib-0.2.6.tar.gz"
    sha256 "4ff604ce439abb20794f05613c374759ce10e3595d1867764dd1ae675b85acbd"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "sortedcontainers" do
    url "https://files.pythonhosted.org/packages/e8/c4/ba2f8066cceb6f23394729afe52f3bf7adec04bf9ed2c820b39e19299111/sortedcontainers-2.4.0.tar.gz"
    sha256 "25caa5a06cc30b6b83d11423433f65d1f9d76c4c6a0c90e3379eaa43b9bfdb88"
  end

  resource "text-unidecode" do
    url "https://files.pythonhosted.org/packages/ab/e2/e9a00f0ccb71718418230718b3d900e71a5d16e701a3dae079a21e9cd8f8/text-unidecode-1.3.tar.gz"
    sha256 "bad6603bb14d279193107714b288be206cac565dfa49aa5b105294dd5c4aab93"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/0f/96/ee6ba35c61186fbf084cb3077374d50eef36ab59cb8c6513317caa190935/tomlkit-0.8.0.tar.gz"
    sha256 "29e84a855712dfe0e88a48f6d05c21118dbafb283bb2eed614d46f80deb8e9a1"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b0/b1/7bbf5181f8e3258efae31702f5eab87d8a74a72a0aa78bc8c08c1466e243/urllib3-1.26.8.tar.gz"
    sha256 "0e7c33d9a63e7ddfcb86780aac87befc2fbddf46c58dbb487e0855f7ceec283c"
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
    assert_match "Usage: nitpick [OPTIONS] COMMAND [ARGS]...", shell_output("#{bin}/nitpick")
  end
end
