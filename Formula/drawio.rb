# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Drawio < Formula
  desc "IvoNetCLI - IvoNet CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "1cc518be70b76554e4f815e4d0f211c7f8f839becdf4217e0d8b2888b6f0b201"

  def install
    bin.install "bin/drawio"
  end

  def caveats; <<~EOS
      This script needs docker to be installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end
