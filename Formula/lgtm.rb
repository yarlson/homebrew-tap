class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.1/lgtm-v0.14.1-darwin-arm64.tar.gz"
      sha256 "cca5e4dfda1328501fc9a08035e340ccaf4b912ce24558a767e064657d088645"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.1/lgtm-v0.14.1-darwin-amd64.tar.gz"
      sha256 "c865341a527be1bb334ffd076403ea969c19b6851540d2a2150ace62857c76bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.1/lgtm-v0.14.1-linux-arm64.tar.gz"
      sha256 "d11d5b8dfdea778cbd882a5dec0477c5d158dee4d935b0969981cf836fb0e6ee"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.14.1/lgtm-v0.14.1-linux-amd64.tar.gz"
      sha256 "c887cd15c3286a4d3ecd0d05815009d891d706077b00b1f9ffb95659c80f7af4"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
