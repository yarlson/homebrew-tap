class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-darwin-arm64.tar.gz"
      sha256 "6d4614bd439f0356585dbdf3dcf557ef52636e286ebea37a0d27d7e3ba3e96f6"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-darwin-amd64.tar.gz"
      sha256 "96be8ab5d7668263e473645e61907219a9b470a0d0818c153beeec618a46dbda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-linux-arm64.tar.gz"
      sha256 "fd8183b8048c4891cdd142a0e0809b17e5c7ee1984a1847ca762ba13610513dc"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-linux-amd64.tar.gz"
      sha256 "a00090c7223f1d5b0e07f342a443812e1ce32114eba2921472dad463e58ec14c"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
