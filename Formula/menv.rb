# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  url "https://github.com/IvoNet/menv/archive/v2.0.tar.gz"
  version "2.0"
  sha256 "d0021942707d2a644e86432ac0d1c627ee6d48a5a0de8051016dabd1a64b8beb"

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
