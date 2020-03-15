# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetCommon < Formula
  desc "IvoNet Common CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.6.tar.gz"
  version "0.1"
  sha256 "4842ec1b5a955a9d12196b6d10f89428ef89d8d122b468938294607823fd76da"

  depends_on "git"

  def install
    bin.install "bin/git_dump_all_versions_of_a_file"
  end

  def caveats; <<~EOS
      Installed:
      - git_dump_all_versions_of_a_file
    EOS
  end
  
end
