# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetCommon < Formula
  desc "IvoNet Common CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  url "https://github.com/IvoNet/homebrew-cli/archive/v0.6.tar.gz"
  version "0.1"
  sha256 "ecdd66efaf8324534cabc8843cbd2f1fc7e90f9ad218323b1da128965cf28ecf"

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
