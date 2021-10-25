# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Drawio < Formula
  desc "IvoNetCLI - IvoNet CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  version "0.12"
  url "https://github.com/IvoNet/homebrew-cli/archive/v#{version}.tar.gz"
  sha256 "377e2d6a5f47878261e2bd7fe46285128cbb413f43c72d522069858a6abce2b9"

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
