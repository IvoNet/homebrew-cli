# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetMedia < Formula
  desc "IvoNetMedia - IvoNet Media CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.16.tar.gz"
  version "0.16"
  sha256 "a42377b5157d0fa5152be9fb8646daeca106a6ecac94c3dc90e549658b50d186"

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
