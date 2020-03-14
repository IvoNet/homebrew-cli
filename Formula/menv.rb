# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://www.ivonet.nl"
  url "https://github.com/IvoNet/menv/archive/v0.5.tar.gz"
  version "0.4"
  sha256 "2efe5dcbe2fb89552ddf590393d37078448e83e46ab06f90f98b4bc4b9383903"

  depends_on "maven"

  def install
    bin.install "bin/menv"
    libexec.install Dir["*"]
    # bin.write_exec_script libexec/"bin/mvn"
    system "menv", "-i"
  end

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
    system "menv", "-h"
  end
end
