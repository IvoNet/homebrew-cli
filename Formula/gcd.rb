# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gcd < Formula
  desc "gcd - The git change directory tool"
  homepage "https://www.ivonet.nl"
  url "https://github.com/IvoNet/git-cd/archive/0.1.tar.gz"
  version "0.1"
  sha256 "142a2b678a9033932dae69c7604286a933263d6edb069d27243ab53c303c3459"
  head "https://github.com/IvoNet/git-cd.git"

  # depends_on "cmake" => :build

  # def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # system "git", "clone", head
  # end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test menv`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
