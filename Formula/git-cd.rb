# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GitCd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://github.com/IvoNet/git-cd"
  url "https://github.com/IvoNet/git-cd/archive/v0.19.tar.gz"
  version "0.19"
  head "https://github.com/IvoNet/git-cd.git"
  sha256 "dadd37c78908720a47df8b9f90def19dff8ec4d66f20ba804f30452ef985906d"

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
alias cdi="source #{HOMEBREW_PREFIX}/bin/cdi" 
# ^^^ cdi - to execute a command by default in the folder you navigate to
#     add `export GCD_EXEC="<your_command_here>"` to your .zshrc
#     defaults to `idea .` (IntelliJ)         
#############################################################################
# Full guide `brew home git-cd` as there are many more options and commands
# available in this package like: ccd, ccd-alias, gcd-rescan, etc...
#############################################################################
# Known issues:                                                           
# - Paths with spaces in them will have the spaces in the menu replaced   
#   with the ? symbol to make them more readable                          
#############################################################################
    EOS
  end

end
