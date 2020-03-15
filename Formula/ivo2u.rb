# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "bc0a3836a9fb1d5422f51245a12d0c5d19b8294bc9d0dc34d606ada630d9e35e"


  def install
    bin.install "bin/ivo2u"
  end
  
end
