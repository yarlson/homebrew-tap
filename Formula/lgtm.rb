class Lgtm < Formula
  desc "Run Codex through local, plan-scoped implementation, validation, and review passes"
  homepage "https://github.com/yarlson/lgtm"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.10.0/lgtm-v0.10.0-darwin-arm64.tar.gz"
      sha256 "6783ad913608c0b7e72fcaa5d653f1b832808b0dfbb2d8544bfcd8905486c28c"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.10.0/lgtm-v0.10.0-darwin-amd64.tar.gz"
      sha256 "8edd293d1751ea0d2017a621c04d7e54d0756f766bd2a685a1f0c04233bdd447"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.10.0/lgtm-v0.10.0-linux-arm64.tar.gz"
      sha256 "5335c6638b67f2d9b36f96ac346807bd6ed25f1d072e63de60e05d2560247265"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.10.0/lgtm-v0.10.0-linux-amd64.tar.gz"
      sha256 "269293ae2f9053590f4b62ea8b55fb7464a8c6b25f5388cd7993cee0b0aeab90"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
