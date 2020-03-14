# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetMedia < Formula
  desc "IvoNetMedia - IvoNet Media CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/master.zip"
  version "0.1"
  # sha256 "885526b94403ff415facf8dc4f2cb523d56226994e5b20867bc1be6441b5a48c"

  def install
    bin.install "bin/m4b"
    bin.install "bin/m4v"
    bin.install "bin/mkvmerge"
  end
  
  def caveats; <<~EOS
      Most scripts in this install need docker installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
    end
  
end
