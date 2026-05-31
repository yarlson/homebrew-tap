class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.20.0"
  link_overwrite "bin/lgtm"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.20.0/lgtm-v0.20.0-darwin-arm64.tar.gz"
      sha256 "5a979a0972d9a1c110494c20217505fc02a5d0af7e759444dc8b0c20f08ced59"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.20.0/lgtm-v0.20.0-darwin-amd64.tar.gz"
      sha256 "5692409471dfc9648c6014b90679599830279a43cb9fd2a43bc7a22902aac2f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.20.0/lgtm-v0.20.0-linux-arm64.tar.gz"
      sha256 "1d416fc760ed15062f01951c395a7754480105b09859bf3655ab72c4e05e9167"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.20.0/lgtm-v0.20.0-linux-amd64.tar.gz"
      sha256 "697717143b07435f4223f2eb81896e9d522ec4a35ab531139f5aba03de455374"
    end
  end

  def install
    bin.install "lgtm"
  end

  def post_install
    # Old cask installs make Homebrew skip formula linking before post_install.
    # Keep the CLI available after formula upgrades without manual brew link.
    system "ln", "-sf", "#{opt_bin}/lgtm", "#{HOMEBREW_PREFIX}/bin/lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
