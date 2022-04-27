# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  version "4.0.0"
  url "https://github.com/IvoNet/menv/archive/v#{version}.tar.gz"
  sha256 "c8bbc72f0203063bdb4f6d3739dd57d47f31db5992d69152e029137d97feaf82"

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
