# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ResetWifi < Formula
  desc "Reset Wi-FI - turns the wifi off and on again."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.3.tar.gz"
  version "0.1"
  sha256 "68d0d3a367cea7d1d44ba557335aa7597fe0bdbe0493b578a71a39a4e32bb2e0"

  depends_on "curl"

  def install
    bin.install "bin/reset-wifi"
  end

end
