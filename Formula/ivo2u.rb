# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.10.tar.gz"
  version "0.10"
  sha256 "e2b2028664f2409c9e46b20d9a83e37c53f25e3ecd5f12d3a0c0b73589f90c3a"


  def install
    bin.install "bin/ivo2u"
  end
  
end
