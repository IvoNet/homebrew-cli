# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  url "https://github.com/IvoNet/menv/archive/v1.6.tar.gz"
  version "1.6"
  sha256 "a22739353c7b0e611bb9493a6e9c030d2f115dbd7b32dca3ecebe00094bffb92"

  depends_on "maven"

  def install
    bin.install "bin/menv"
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
##############################################################################
# First usage instruction:
##############################################################################
  run the following command:

     menv install
  
  Now you can use the menv mvn.
##############################################################################
# Uninstall information:
##############################################################################
  This script will replace the original 'mvn' command with its own.
  If you want to remove 'menv' just do the normal 'brew uninstall menv',
  but also the following:

     brew unlink maven && brew link maven

  this will restore the original mvn commands.
##############################################################################
    EOS
  end

end
