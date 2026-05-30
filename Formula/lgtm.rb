class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.17.0/lgtm-v0.17.0-darwin-arm64.tar.gz"
      sha256 "d4e236c2ac33d47bd0daac0ca3f976860344b44fe9af04639e02bd0fbfc80629"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.17.0/lgtm-v0.17.0-darwin-amd64.tar.gz"
      sha256 "47f21d45f03a1900789edfcca6b6042be4ebb9607ce5725ff4406b8773d38df9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.17.0/lgtm-v0.17.0-linux-arm64.tar.gz"
      sha256 "6878461f3d1ded951d0cd057ccb749b08a6977b95f8f1bebe76caaec15a86fb9"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.17.0/lgtm-v0.17.0-linux-amd64.tar.gz"
      sha256 "27945a04b5d161ac814482911a3aa9673dbd465934d5b06824f51ee7d82b40f9"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
