# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ResetWifi < Formula
  desc "Reset Wi-FI - turns the wifi off and on again."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.3.tar.gz"
  version "0.1"
  sha256 "fe6b19cab3064d8ce89b24417a6eec0291e587fbd15fd11522ab3bf267c50a80"

  depends_on "curl"

  def install
    bin.install "bin/reset-wifi"
  end

  def caveats; <<~EOS
      This script needs docker to be installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end
