class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.0/lgtm-v0.14.0-darwin-arm64.tar.gz"
      sha256 "fa267d74fbdca443d868025483f3cac2b6484250d816d00d02632a3d3031aebd"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.0/lgtm-v0.14.0-darwin-amd64.tar.gz"
      sha256 "f893c3e82b0d150da92b8f29531c6ed693e667d700397cd7d97d868310e75049"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.0/lgtm-v0.14.0-linux-arm64.tar.gz"
      sha256 "38e407eeb66b1bb0c1cb2d329584b5b659c30c1378ced96a9ef1c9543de8f40b"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.0/lgtm-v0.14.0-linux-amd64.tar.gz"
      sha256 "a6e225131cce7113b579b3d1fdca0a2ce3c5e2369074ae0007b9ff93858ec395"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
