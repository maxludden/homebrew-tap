class RichGradientCli < Formula
  include Language::Python::Virtualenv

  desc "Render files, URLs, stdin, and text with rich-gradient from the command line"
  homepage "https://github.com/maxludden/rich-gradient-cli"
  url "https://files.pythonhosted.org/packages/8c/37/a3b6ec5d407221a4f2848e357fc6e87cb2580d7c3bab80c8caaec072de32/rich_gradient_cli-0.3.0.tar.gz"
  sha256 "be48027be0a504388b5b3c98cad3831aa4dc453e0eaf8fa7e654b45672889548"
  license "MIT"

  depends_on "rust" => :build # uv_build backend compiles from source
  depends_on "python@3.13"

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
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

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/03/51/d33db42cc72ffd8c30777547b42d01f0cbf9d95a770457698d0174b3ed71/typer-0.27.3.tar.gz"
    sha256 "d0396f770a560ab1b0a8504e13b5f254b728cedb05c61cf0359e944e50ce8901"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gradient --version")
  end
end
