# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.9.tar.gz"
  version "0.9"
  sha256 "60d15caa753591059f5a45426d0abfe985cd47cedb942bb95e46ff02836e46f1"


  def install
    bin.install "bin/ivo2u"
  end
  
end
