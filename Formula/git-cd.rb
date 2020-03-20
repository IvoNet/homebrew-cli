# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GitCd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://github.com/IvoNet/git-cd"
  url "https://github.com/IvoNet/git-cd/archive/v0.16.tar.gz"
  version "0.16"
  head "https://github.com/IvoNet/git-cd.git"
  sha256 "98eb982ef2971180cb332f45fbbeda73396770e853f848ba39098fb6c86e9cd1"

  depends_on "python@3"
  depends_on "coreutils"

  def install
    inreplace "bin/ccd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd"
    
    inreplace "bin/ccd-help", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd-help"

    inreplace "bin/ccd-alias", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd-alias"

    inreplace "bin/gcd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd"

    inreplace "bin/gcd-add", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-add"

    bin.install "bin/cdi"

    inreplace "bin/gcd-rescan", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-rescan"

    inreplace "bin/gcd-reset-all", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-reset-all"

    inreplace "bin/gcd-unalias", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-unalias"

    inreplace "bin/gcd-zap", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-zap"
    
    inreplace "bin/gcdcron", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
#############################################################################
# git-cd (gcd) will scan and index all your git projects in your HOME 
# folder and below for easy switching between them.
#############################################################################
# NOTE!! Read the following carefully                                                                    
#############################################################################
# Add the following line to your .zshrc / .bashrc or equivalent:           
#############################################################################
alias gcd="source #{HOMEBREW_PREFIX}/bin/gcd"
alias ccd="source #{HOMEBREW_PREFIX}/bin/ccd"
# if you develop with IntelliJ idea and you have the commandline tool
# this will navigate to the folder and open intellij there :-)         
alias cdi="source #{HOMEBREW_PREFIX}/bin/cdi" 
#############################################################################
# If you want to change the number of favorites to display                  
# add the following with a number (default 10):                             
#############################################################################
export GCD_FAVORITES=20
#############################################################################
# Add the following too, If you want gcd to scan a different base folder:
#############################################################################
export GCD_PROJECTS_DIR=<your_directory_here>
#############################################################################
# If you want the projects to be automatically update the projects at an 
# interval you can add a cron job:
# * edit crontab with `crontab -e`
# * add one of the following lines (or your own of course)
# * exit and save
#############################################################################
#  This example will update every 6 hours 
0 */6 * * * #{opt_libexec}/bin/gcdcron  
#  This one every morning at 8 am
0 8 * * * #{opt_libexec}/bin/gcdcron  
#  This one every day at 7 / 12 / 15 / 20 hours
0 7,12,15,20 * * * #{opt_libexec}/bin/gcdcron  
#############################################################################
# Full guide `brew home git-cd`
#############################################################################
# Known issues:                                                           
# - Paths with spaces in them will have the spaces in the menu replaced   
#   with the ? symbol to make them more readable                          
#############################################################################
    EOS
  end

end
