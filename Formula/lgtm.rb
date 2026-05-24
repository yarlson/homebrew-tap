class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.11.0/lgtm-v0.11.0-darwin-arm64.tar.gz"
      sha256 "7c1b0477095e3cb8d5bd6c07fd8b98e6054925bec1304d0215e292d70f1eba6d"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.11.0/lgtm-v0.11.0-darwin-amd64.tar.gz"
      sha256 "ddf9714408872376e6942b9ac78a3715ba5016798842c269b1c68b3c4d3db721"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.11.0/lgtm-v0.11.0-linux-arm64.tar.gz"
      sha256 "e6c1ac09426cc20bf07ad959b735a5820dd6067bc008c4d3a929296a6b742bec"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.11.0/lgtm-v0.11.0-linux-amd64.tar.gz"
      sha256 "06ab3882e979c1d1bc893d7792bd410d1bd2dc3dfe2e844db8f02e5104f34a93"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
