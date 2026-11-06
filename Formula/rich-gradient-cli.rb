class RichGradientCli < Formula
  include Language::Python::Virtualenv

  desc "Render files, URLs, stdin, and text with rich-gradient from the command-line"
  homepage "https://github.com/maxludden/rich-gradient-cli"
  url "https://files.pythonhosted.org/packages/29/91/cde1885e74bf350376ce8d36682c9da03ff2e8b116fbfc0a00612cbfdc46/rich_gradient_cli-0.4.0.tar.gz"
  sha256 "e9a3ebf646ec03d0e86ebc6183419c8a2c718db0fab99c4423e8dc15b41e63a5"
  license "MIT"

  depends_on "rust" => :build # uv_build backend compiles from source
  depends_on "python@3.13"

  resource "amplitude-analytics" do
    url "https://files.pythonhosted.org/packages/cb/86/08c31c588dc6601bdac591e3a709cf964ca9a5f32fcb8d2eb0be93fdfcf5/amplitude_analytics-1.3.0.tar.gz"
    sha256 "47e685b5b49c95997cae059f7277b4792dbefe11c170e165d67c6a3f785b8e98"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rich-color-ext" do
    url "https://files.pythonhosted.org/packages/f3/6b/413e81401b11ce2a3b6dbaf0c1c78e7aee814fe4af4717e3dc79a0efb906/rich_color_ext-3.0.0.tar.gz"
    sha256 "1bcdf8ac4aa3e9a13dd58b19597d527ec11a36c705b5d212f8ad8c2e8fdf529c"
  end

  resource "rich-gradient" do
    url "https://files.pythonhosted.org/packages/e7/55/5b5d87ce38c0e177cc903940e28e94bb4ba64f0e32528ddfb58fc6dd94ef/rich_gradient-0.4.1.tar.gz"
    sha256 "026795728d4539f6776bdc64a5038a64f02f5ecc59e0eaa359dd18515a9d3ac1"
  end

  resource "rich-rst" do
    url "https://files.pythonhosted.org/packages/cf/0e/faf7c7e36630561e3e9611730c47510cd972dd5fde8f95941ff78f76accd/rich_rst-2.2.0.tar.gz"
    sha256 "b1e6a67f8f694a6f36035624bf73e2b1a0a4be13edaf3ba5e654d9758b61073a"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/36/bf/8825b5929afd84d0dabd606c67cd57b8388cb3ec385f7ef19c5cc2202069/typer-0.21.1.tar.gz"
    sha256 "ea835607cd752343b6b2b7ce676893e5a0324082268b48f27aa058bdb7d2145d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gradient --version")
    assert_match "hello", shell_output("#{bin}/gradient --colors 'red,orange' hello")
  end
end
