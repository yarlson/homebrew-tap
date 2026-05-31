class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.21.0"
  link_overwrite "bin/lgtm"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.21.0/lgtm-v0.21.0-darwin-arm64.tar.gz"
      sha256 "c440d228b03ef0d3aa9b6883485ff1018e439f0ac6162987e57103a047a0d325"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.21.0/lgtm-v0.21.0-darwin-amd64.tar.gz"
      sha256 "05d9ec100b824040918692efb8ceeb1f16c06b1ebb12bbe6554172708affe23d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.21.0/lgtm-v0.21.0-linux-arm64.tar.gz"
      sha256 "eac81e4f60b7664d31b0ee7ae8931065e8c2c1eded9c86970c95f9c38500a7b1"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.21.0/lgtm-v0.21.0-linux-amd64.tar.gz"
      sha256 "cdc5130ecca5dab3451ea4a31f38a1ef4cccbd074a6a48b6ae16352099b1d8c0"
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
