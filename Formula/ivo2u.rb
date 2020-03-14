# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Ivo2u < Formula
  desc "ivo2u - the ivo tiny url service"
  homepage "https://www.ivonet.nl"
  url "https://github.com/IvoNet/menv/archive/v0.8.tar.gz"
  version "0.8"
  sha256 "25584961def504a9fe4c016412e9860d48f306cc2cfd4733de8187d85f1af948"

  depends_on "maven"

  def install
    bin.install "bin/menv"
    libexec.install Dir["*"]
  end
  
end
