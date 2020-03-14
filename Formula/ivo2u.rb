# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "1cc518be70b76554e4f815e4d0f211c7f8f839becdf4217e0d8b2888b6f0b201"


  def install
    bin.install "bin/ivo2u"
  end
  
end
