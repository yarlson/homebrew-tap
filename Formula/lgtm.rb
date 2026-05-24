class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.12.0/lgtm-v0.12.0-darwin-arm64.tar.gz"
      sha256 "147e4decd049d2493b464ccab615da586ddc0037a3c661ba9cbc22ad9c2bb7c0"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.12.0/lgtm-v0.12.0-darwin-amd64.tar.gz"
      sha256 "ee808830534aa83bf2e61a69ef63c3a3707b2f2ef23bae52b86e7b871e3c7415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.12.0/lgtm-v0.12.0-linux-arm64.tar.gz"
      sha256 "ea15d9998cc3166a39d43b81d0f2e16576d4e0b959f62abc1932e0b7058aec41"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.12.0/lgtm-v0.12.0-linux-amd64.tar.gz"
      sha256 "ce86cea33fffbb7a9ef63d4c843f99d9de5c1d6da6eb2c7a255807ca2f7e000b"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
