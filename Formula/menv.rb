# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  url "https://github.com/IvoNet/menv/archive/v1.7.2.tar.gz"
  version "1.7.2"
  sha256 "c6e5126db1c1b5d577a4d87f40d3349bd4ba19d8f51f402af174a2e039d36be4"

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
