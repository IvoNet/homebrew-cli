# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetCommon < Formula
  desc "IvoNet Common CLI tools."
  homepage "https://github.com/IvoNet/homebrew-ivonet/tree/master/bin"
  version "1.0"
  url "https://github.com/IvoNet/homebrew-cli/archive/v#{version}.tar.gz"
  sha256 "ff798d5974c6db81d7028b4c3165f70836219d4f45a0d0e853cabfa9d14c8580"

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
