# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GitCd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://github.com/IvoNet/git-cd"
  url "https://github.com/IvoNet/git-cd/archive/v0.23.tar.gz"
  version "0.23"
  head "https://github.com/IvoNet/git-cd.git"
  sha256 "98d451809621308517ea285a2fb4d94b8b1a144b7a854fb3dc674652976e83a5"

  depends_on "python@3"
  depends_on "coreutils"

  def install
    inreplace "bin/ccd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd"
    
    inreplace "bin/ccd-help", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd-help"

    inreplace "bin/ccd-alias", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd-alias"

    inreplace "bin/ccd-unalias", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/ccd-unalias"

    inreplace "bin/gcd", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd"

    inreplace "bin/gcd-add", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-add"

    bin.install "bin/cdi"
    bin.install "bin/cdc"

    inreplace "bin/gcd-rescan", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-rescan"

    inreplace "bin/gcd-reset-all", "!!GCDLIBEXECBIN!!", "#{opt_libexec}/bin"
    bin.install "bin/gcd-reset-all"

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
alias cdc="source #{HOMEBREW_PREFIX}/bin/cdc" 
alias cdi="source #{HOMEBREW_PREFIX}/bin/cdi" 
# ^^^ cdi/cdc - to execute a command by default in the folder you navigate to
#     add `export GCD_EXEC="<your_command_here>"` to your .zshrc
#     defaults to `ls -lsa`.         
#############################################################################
# Full guide `brew home git-cd` as there are many more options and commands
# available in this package like: ccd, cdi, ccd-alias, gcd-rescan, etc...
#############################################################################
# Known issues:                                                           
# - Paths with spaces in them will have the spaces in the menu replaced   
#   with the ? symbol to make them more readable                          
#############################################################################
    EOS
  end

end
