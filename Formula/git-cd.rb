# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GitCd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://github.com/IvoNet/git-cd"
  url "https://github.com/IvoNet/git-cd/archive/v0.11.tar.gz"
  version "0.11"
  head "https://github.com/IvoNet/git-cd.git"
  sha256 "4e0104dafa4691507b2407b2ddadcce809298ae5d0cc6611f6c8773ce77de4b8"

  depends_on "python@3"

  def install
    inreplace "bin/gcd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd"
    bin.install "bin/cdi"
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
#############################################################################
#  NOTE!!                                                                    
#############################################################################
#  Add the following lines to your .zshrc / .bashrc or equivalent:           
#############################################################################
   alias gcd="source #{HOMEBREW_PREFIX}/bin/gcd"         
   alias gcdrescan="rm -f \${HOME}/.gcd/gcd.cache 2>/dev/null && gcd"  
   alias gcdreset="rm -f \${HOME}/.gcd/gcd.sqlite 2>/dev/null && gcd"
   alias cdi="source #{HOMEBREW_PREFIX}/bin/cdi"  
#############################################################################
#  If you want to change the number of favorites to display                  
#  add the following with a number (default 10):                             
#############################################################################
   export GCD_FAVORITES=20
#############################################################################
#  If you want the projects to be automatically updated at an interval you
#  can add a cron job:
#  * edit crontab with `crontab -e`
#  * add following line (or your own config)
#  * exit and save
#############################################################################
* */6 * * * #{opt_bin}/gcdcron    
#############################################################################
#    Known issues:                                                           
#    - Paths with spaces in them will have the spaces in the menu replaced   
#      with the ? symbol to make them more readable                          
#############################################################################
    EOS
  end

end
