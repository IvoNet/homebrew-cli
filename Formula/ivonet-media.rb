# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetMedia < Formula
  desc "IvoNetMedia - IvoNet Media CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.15.tar.gz"
  version "0.15"
  sha256 "fe1b12e489f6d78952ad3449c914431c091c2f85708fce6439b3728884027c86"

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
