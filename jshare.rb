# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Jshare < Formula
  desc ""
  homepage ""
  url "https://github.com/biancasubion/jshare/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 ""

  depends_on cask: => "ngrok" 

  # depends_on "cmake" => :build
  depends_on :python
  depends_on "args" => :python
  depends_on "clint" => :python
  depends_on "requests" => :python

  def install
    bin.install "jshare"
    prefix.install Dir["./*"]
  end
end
