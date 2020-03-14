# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/master.zip"
  version "0.1"
  # sha256 "885526b94403ff415facf8dc4f2cb523d56226994e5b20867bc1be6441b5a48c"


  def install
    bin.install "bin/ivo2u"
  end
  
end
