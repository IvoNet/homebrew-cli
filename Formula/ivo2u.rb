# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - The Ivo2U tiny url service"
  homepage "http://ivo2u.nl"
  version "0.15"
  url "https://github.com/IvoNet/homebrew-cli/archive/v#{version}.tar.gz"
  sha256 "fe1b12e489f6d78952ad3449c914431c091c2f85708fce6439b3728884027c86"

  depends_on "curl"

  def install
    bin.install "bin/ivo2u"
  end
  
end
