# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/master.zip"
  version "0.1"
  sha256 "25584961def504a9fe4c016412e9860d48f306cc2cfd4733de8187d85f1af948"


  def install
    bin.install "bin/ivo2u"
  end
  
end
