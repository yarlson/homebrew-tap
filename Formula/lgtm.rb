class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.19.2"
  link_overwrite "bin/lgtm"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.2/lgtm-v0.19.2-darwin-arm64.tar.gz"
      sha256 "3344d8f4b9d9ba798dbf5d252012285a2a8566c753d0eb47a4ccf38233cd8652"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.2/lgtm-v0.19.2-darwin-amd64.tar.gz"
      sha256 "235f8df50a59ca95db76bf6425d3f1dcf2f6b9f291ff264561a6c78c6c117712"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.2/lgtm-v0.19.2-linux-arm64.tar.gz"
      sha256 "9662839eb50f90b6e0b1be5c89ecccfeef3ac66cc4f1469b48abdaae397bc72b"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.2/lgtm-v0.19.2-linux-amd64.tar.gz"
      sha256 "87cf21b4f5eb4830e1932351d1ac22f5886678f5ce41619b88790c8844e2bc0d"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
