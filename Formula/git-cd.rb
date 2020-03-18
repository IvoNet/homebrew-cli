# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GitCd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://github.com/IvoNet/git-cd"
  url "https://github.com/IvoNet/git-cd/archive/v0.13.tar.gz"
  version "0.13"
  head "https://github.com/IvoNet/git-cd.git"
  # sha256 "dcc64f1f987a6c635058a144657739d10839f5a6e8e8fb2b939fc9dc089aca60"

  depends_on "python@3"

  def install
    inreplace "bin/gcd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    inreplace "bin/gcdcron", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    inreplace "bin/gcdrescan", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    inreplace "bin/gcdresetmetrics", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd"
    bin.install "bin/cdi"
    bin.install "bin/gcdrescan"
    bin.install "bin/gcdresetmetrics"
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
#############################################################################
# git-cd (gcd) will scan and index all your git projects in your HOME 
# folder and below for easy switching between them.
#############################################################################
# NOTE!!                                                                    
#############################################################################
# Add the following line to your .zshrc / .bashrc or equivalent:           
#############################################################################
alias gcd="source #{HOMEBREW_PREFIX}/bin/gcd"
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
# If you want the projects to be automatically opdate the projects at an 
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
# Known issues:                                                           
# - Paths with spaces in them will have the spaces in the menu replaced   
#   with the ? symbol to make them more readable                          
#############################################################################
    EOS
  end

end
