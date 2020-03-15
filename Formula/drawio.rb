# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Drawio < Formula
  desc "IvoNetCLI - IvoNet CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "bc0a3836a9fb1d5422f51245a12d0c5d19b8294bc9d0dc34d606ada630d9e35e"

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
