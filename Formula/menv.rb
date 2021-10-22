# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://github.com/IvoNet/menv"
  url "https://github.com/IvoNet/menv/archive/v1.7.tar.gz"
  version "1.7"
  sha256 "95bc07b9396410ca0bd21ef339e86c54977f1f53379c4dc3638626a3725a5f4f"

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
