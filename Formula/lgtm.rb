class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-darwin-arm64.tar.gz"
      sha256 "895227489949dabb155361ae0fcb16e9000b18173dbc49aeadfa4fa57991ec72"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-darwin-amd64.tar.gz"
      sha256 "375396cd2b46eb85f857643e435a1e2aaf35b2e0650d6d1004c84e1ee545d07d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-linux-arm64.tar.gz"
      sha256 "8029bccd18cb1cd7db8870629f3cd0c55a235ed43ef9f4c7e455ca6601384bda"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.16.0/lgtm-v0.16.0-linux-amd64.tar.gz"
      sha256 "8c38489e7fedefd3babf118b9157b67bec0788adeeefdbaf24a7617a3b0c172b"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
