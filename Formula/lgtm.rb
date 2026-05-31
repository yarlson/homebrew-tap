class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.1/lgtm-v0.19.1-darwin-arm64.tar.gz"
      sha256 "fb884b708f8addb769a55f175b507ad4b17981f72f91d2c5ac5c25c78f44ed93"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.1/lgtm-v0.19.1-darwin-amd64.tar.gz"
      sha256 "b564b184f5deb1039a2c64118d4fb6e4dd128f689bf24630ef60b8ee11f1207a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.1/lgtm-v0.19.1-linux-arm64.tar.gz"
      sha256 "c8c6c4f55e6dc78dd7e917fbbf973c1fb41b9cbc4441bd282fce54ba2c7bfbee"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.1/lgtm-v0.19.1-linux-amd64.tar.gz"
      sha256 "5f7262b1d33d2733d4cf0793863a1d4e8d1fa0131e2b48a80228a59fc0d38510"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
