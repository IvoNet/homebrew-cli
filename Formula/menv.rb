# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  version "5.0.0"
  url "https://github.com/IvoNet/menv/archive/v#{version}.tar.gz"
  sha256 "6a68c5a706f3c16c780bc22a7b6efc77b4cfb097d17b102e08a52d6b12411302"

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

     menv init
  
  Now you can use the menv mvn.
  Note that if you upgrade maven you may have to rerun the init again.
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
