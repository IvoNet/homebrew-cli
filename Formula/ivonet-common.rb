# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetCommon < Formula
  desc "IvoNet Common CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  version "1.0"
  url "https://github.com/IvoNet/homebrew-cli/archive/v#{version}.tar.gz"
  sha256 "1e75966b73e853acb7604b4aa3eb49d6f1bf9d7d6ff08ef076f3fdae347d3bd7"

  depends_on "git"

  def install
    bin.install "bin/git_dump_all_versions_of_a_file"
    bin.install "bin/sshh"
  end

  def caveats; <<~EOS
      Installed:
      - git_dump_all_versions_of_a_file
      - sshh
    EOS
  end
  
end
