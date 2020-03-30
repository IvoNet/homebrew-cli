# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetMedia < Formula
  desc "IvoNetMedia - IvoNet Media CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.11.tar.gz"
  version "0.11"
  sha256 "9f5c59571c71bdbe0eaf0bae357dca387de95b1db78dbf8600810e911c37f47a"

  def install
    bin.install "bin/m4b"
    bin.install "bin/m4v"
    bin.install "bin/mkvmerge"
    bin.install "bin/mkvinfo"
    bin.install "bin/mkvinfo-help"
    bin.install "bin/mkv2x264"
    bin.install "bin/mkv-rm-tracks"
  end
  
  def caveats; <<~EOS
      Most scripts in this install need docker installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end
