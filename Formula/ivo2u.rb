# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.2.tar.gz"
  version "0.1"
  sha256 "cf2668de6508aa87db95fa53a08eca78422c9899b719418e65e4bead55ded3fe"


  def install
    bin.install "bin/ivo2u"
  end
  
end
