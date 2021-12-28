class BluebenchCli < Formula
  desc "青いベンチ診断をローカルで実行します"
  homepage "https://okaponta.github.io/profile/"
  url "https://github.com/okaponta/bluebench-cli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "7e23667d97c0e967d981db04839ab539d2879ed6b8c0f2cf89a57e4c6537c5ef"
  license "Apache-2.0"

  def install
    print buildpath
    ENV["GOPATH"] = buildpath
    install_path = buildpath/"src/github.com/okaponta/bluebench-cli/"
    install_path.install buildpath.children

    cd install_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build"
      bin.install "bluebench-cli"
    end
  end
end
