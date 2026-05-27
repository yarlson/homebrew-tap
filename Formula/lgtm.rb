class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.15.0/lgtm-v0.15.0-darwin-arm64.tar.gz"
      sha256 "60e8c35b06255b736b8f014bbc45ba5f221782b2dbf6d7f69a3b138bebc5a565"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.15.0/lgtm-v0.15.0-darwin-amd64.tar.gz"
      sha256 "f74fcdf273f5dba1f8271b6405612c1e46cb057560e3a3e20ca4d35a9a66e5ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.15.0/lgtm-v0.15.0-linux-arm64.tar.gz"
      sha256 "78211ca15d8f90bde970ec6fa4ea2c77795d7bc0f5373b0bb522b6bcabda62cd"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.15.0/lgtm-v0.15.0-linux-amd64.tar.gz"
      sha256 "95048f2e6febfa9eee709bf6824495f4a16a478024893ece02a21774033d6704"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
