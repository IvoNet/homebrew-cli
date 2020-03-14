# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Menv < Formula
  desc "menv - The environment changer for maven"
  homepage "https://www.ivonet.nl"
  url "https://github.com/IvoNet/menv/archive/v0.4.tar.gz"
  version "0.4"
  sha256 "e6f64f11e5d396d2a3e0f645ec139d85dae897fb013938cf6465a5ee55c96cda"

  depends_on "maven"

  def install
    rm_f "/usr/local/bin/mvn"
    bin.install "bin/menv"
    bin.install "bin/mvn"
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
