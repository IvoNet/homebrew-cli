# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Drawio < Formula
  desc "IvoNetCLI - IvoNet CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/master.zip"
  version "0.1"
  # sha256 "885526b94403ff415facf8dc4f2cb523d56226994e5b20867bc1be6441b5a48c"

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
