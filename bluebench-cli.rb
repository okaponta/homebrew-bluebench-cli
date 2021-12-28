# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BluebenchCli < Formula
  desc "青いベンチ診断をローカルで実行します"
  homepage "https://okaponta.github.io/profile/"
  url "https://github.com/okaponta/bluebench-cli/releases/download/v1.2.0/bluebench-cli"
  sha256 "ad7c61fe88d4e06e695a6889dc9d801d69089d547ae0c51f53400e10acbac25e"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "bluebench-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test bluebench-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
