# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  version "2.5"
  url "https://github.com/IvoNet/menv/archive/v#{version}.tar.gz"
  sha256 "6f95dee1b0c0e4fffadf3386c8d22984ac7cc7ab73c5d4bd09ecaf4807165274"

  depends_on "maven"

  def install
    inreplace "bin/menv", "!!!VERSION!!!", "#{version}"
    bin.install "bin/menv"
    
    bin.install "bin/mvn"
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
