class Lgtm < Formula
  desc "Plan and run Codex-backed local phase work"
  homepage "https://github.com/yarlson/lgtm"
  version "0.19.3"
  link_overwrite "bin/lgtm"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.3/lgtm-v0.19.3-darwin-arm64.tar.gz"
      sha256 "664f959c6aba86f9a668679d094920359224b36e65f96d3dd9e52935711c132e"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.3/lgtm-v0.19.3-darwin-amd64.tar.gz"
      sha256 "9c98ba3ae9bff69187c3eb18df59c9f21c2998df6b36aa4067dde2b9352f02fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.3/lgtm-v0.19.3-linux-arm64.tar.gz"
      sha256 "eb686fe5acb03123566122dddf22df91c164eae4d48b844fe03e37f6e20fda33"
    else
      url "https://github.com/yarlson/lgtm/releases/download/v0.19.3/lgtm-v0.19.3-linux-amd64.tar.gz"
      sha256 "11b06d1a1a3a7eb6561cb3b3172ec5b6af7fb91fa6bb9f4ed4b0e2013e08988f"
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
