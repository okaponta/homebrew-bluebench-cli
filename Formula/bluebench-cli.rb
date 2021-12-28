class BluebenchCli < Formula
  desc "青いベンチ診断をローカルで実行します"
  homepage "https://okaponta.github.io/profile/"
  url "https://github.com/okaponta/bluebench-cli/releases/download/v1.2.0/bluebench-cli"
  sha256 "ad7c61fe88d4e06e695a6889dc9d801d69089d547ae0c51f53400e10acbac25e"
  license "Apache-2.0"

  def install
    bin.install "bluebench-cli"
  end
end
