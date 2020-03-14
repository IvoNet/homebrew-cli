# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetDocker < Formula
  desc "IvoNetDocker - IvoNet Docker CLI tools"
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "1cc518be70b76554e4f815e4d0f211c7f8f839becdf4217e0d8b2888b6f0b201"


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
