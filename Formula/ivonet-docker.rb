# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetDocker < Formula
  desc "IvoNetDocker - IvoNet Docker CLI tools"
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  version "0.8"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/v#{version}.tar.gz"
  sha256 "eac8bb6cbb6dfc845320b7f3315ed078d24fe9680f75c143e20877e85068e33e"


  def install
    bin.install "bin/dig"
    bin.install "bin/docker-make"
    bin.install "bin/docker-project"
    bin.install "bin/docker-ui-project"
  end

  def caveats; <<~EOS
      Most scripts in this install need docker installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end
