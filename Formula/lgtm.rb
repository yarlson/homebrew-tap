class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.18.0/lgtm-v0.18.0-darwin-arm64.tar.gz"
      sha256 "5c2d9b20b973b0f05dcc201bc3e9fefe99248bf252a7efea7d5b33823302dc0a"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.18.0/lgtm-v0.18.0-darwin-amd64.tar.gz"
      sha256 "01e97f6a36bebc85612d2780f5247340c9719a6ebe28527a0866a5ec0075d166"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.18.0/lgtm-v0.18.0-linux-arm64.tar.gz"
      sha256 "10415f3d62bc9177ab7b3a240f47d5e90808815bb4798f8474aaccacd872df3f"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.18.0/lgtm-v0.18.0-linux-amd64.tar.gz"
      sha256 "6df456dfd3f7eeef7af6bea47c9bae8cd20e85e2a5b86ab2b5c0163e297cf231"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
