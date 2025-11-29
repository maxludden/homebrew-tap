class RichGradient < Formula
  include Language::Python::Virtualenv

  desc "Gradient generator for Rich renderables and CLI"
  homepage "https://github.com/maxludden/rich-gradient"
  url "https://github.com/maxludden/rich-gradient/archive/refs/tags/v0.3.9.tar.gz"
  sha256 "ea7bbb2a6c95a6b49aa2eac8153cdf263ed8e458f88866c8cb6dad33d14e04ad"
  license "MIT"

  depends_on "python@3.13"

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/53/830aa4c3066a8ab0ae9a9955976fb770fe9c6102117c8ec4ab3ea62d89e8/rich-14.0.0.tar.gz"
    sha256 "82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725"
  end

  resource "rich-color-ext" do
    url "https://files.pythonhosted.org/packages/88/a2/ba3dfff54c51ccce1304cd3315a1861c67e2142db2e9a778ef0bb11ab4b1/rich_color_ext-0.1.9.tar.gz"
    sha256 "d32393b8e29bfc2add3eb89ffae26fe683f388325ea51461c1889a53e7f6d371"
  end

  resource "rich-click" do
    url "https://files.pythonhosted.org/packages/bf/d8/f2c1b7e9a645ba40f756d7a5b195fc104729bc6b19061ba3ab385f342931/rich_click-1.9.4.tar.gz"
    sha256 "af73dc68e85f3bebb80ce302a642b9fe3b65f3df0ceb42eb9a27c467c1b678c8"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/21/ca/950278884e2ca20547ff3eb109478c6baf6b8cf219318e6bc4f666fad8e8/typer-0.19.2.tar.gz"
    sha256 "9ad824308ded0ad06cc716434705f691d4ee0bfd0fb081839d2e426860e7fdca"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "rich-gradient", shell_output("#{bin}/rich-gradient --version")
    output = shell_output("#{bin}/rich-gradient print 'hi' --rainbow")
    assert_match "hi", output
  end
end
