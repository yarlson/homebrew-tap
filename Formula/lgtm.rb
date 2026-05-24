class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.13.0/lgtm-v0.13.0-darwin-arm64.tar.gz"
      sha256 "59491f5363e213206a3da96d221cdf63fa7279099fbc9f5ee5ab8130b4ddd4f9"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.13.0/lgtm-v0.13.0-darwin-amd64.tar.gz"
      sha256 "c3ad81aed4fcd694ecb3e077df9c41a990e2d689a8cfa594dfb2c6fee912c1ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.13.0/lgtm-v0.13.0-linux-arm64.tar.gz"
      sha256 "b6f3cb16ac5a2b371f6909934329beb00b3a1c87873939cd15abcf890781c200"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.13.0/lgtm-v0.13.0-linux-amd64.tar.gz"
      sha256 "ce76493314d9f5acea82b8b9224334205efb2f54cc00f5706e9dfdd088a3fa2f"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
