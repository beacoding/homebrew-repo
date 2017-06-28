# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GoTo < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://github.com/biancasubion/go_to/archive/1.0.0.tar.gz"
  head "https://github.com/biancasubion/go_to.git"
  sha256 "85326f3a0c092e3524cd226a0bcd330561487e5580b00d2bc25d200475027ad0"

  depends_on :python if MacOS.version <= :snow_leopard



  resource "flask" do
    url "https://pypi.python.org/packages/source/F/Flask/Flask-0.10.1.tar.gz"
    sha256 "4c83829ff83d408b5e1d4995472265411d2c414112298f2eb4b359d9e4563373"
  end

  resource "jinja2" do
    url "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.8.tar.gz"
    sha256 "bc1ff2ff88dbfacefde4ddde471d1417d3b304e8df103a7a9437d47269201bf4"
  end

  resource "werkzeug" do
    url "https://pypi.python.org/packages/source/W/Werkzeug/Werkzeug-0.10.4.tar.gz"
    sha256 "9d2771e4c89be127bc4bac056ab7ceaf0e0064c723d6b6e195739c3af4fd5c1d"
  end

  def install
    virtualenv_install_with_resources
    bin.install "go_to"
    prefix.install Dir["./*"]
  end 
end
