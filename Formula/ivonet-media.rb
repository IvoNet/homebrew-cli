# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetMedia < Formula
  desc "IvoNetMedia - IvoNet Media CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  version "0.18"
  url "https://github.com/IvoNet/homebrew-cli/archive/v#{version}.tar.gz"
  sha256 "78d3f91339b7baa897cf6b8f6c028f6f079e394a84c11afcc7aa8d7f7e79d26a"

  def install
    bin.install "bin/m4b"
    bin.install "bin/m4v"
    bin.install "bin/mkvmerge"
    bin.install "bin/mkvinfo"
    bin.install "bin/mkvinfo-help"
    bin.install "bin/mkv2x264"
    bin.install "bin/mkv-rm-tracks"
    bin.install "bin/aif2mp3"
  end
  
  def caveats; <<~EOS
      Most scripts in this install need docker installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end
