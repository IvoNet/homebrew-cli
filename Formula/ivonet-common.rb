# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetCommon < Formula
  desc "IvoNet Common CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.5.tar.gz"
  version "0.1"
  sha256 "4fff1f4e87929fd8a43470e032a9d9f39b4c35f08f18cde4a5a51e30ad3506ea"

  def install
    bin.install "bin/histg"
  end

  def caveats; <<~EOS
      Installed:
      - histg
    EOS
  end
  
end
