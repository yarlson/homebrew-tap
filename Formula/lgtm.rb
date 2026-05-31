class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.0/lgtm-v0.19.0-darwin-arm64.tar.gz"
      sha256 "95c5c2656d36f6aa8ec27a6b30163a8971c9ff07f18e8ee92744567b14646521"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.0/lgtm-v0.19.0-darwin-amd64.tar.gz"
      sha256 "a9d4fa095920837f27977f7c8e29b8e97d9f592d0073d049dc93293b8bed0925"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.0/lgtm-v0.19.0-linux-arm64.tar.gz"
      sha256 "09bab00afd9ae5e5fe893be3aff80450181c162cbc94458c3cbfef87cd5021c2"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.0/lgtm-v0.19.0-linux-amd64.tar.gz"
      sha256 "1200c9b1856503fdf57782dda6079c4b6d5a63316309aeddd4142032f15462fe"
    end
  end

  def install
    bin.install "lgtm"
  end

  test do
    system "#{bin}/lgtm", "--version"
  end
end
