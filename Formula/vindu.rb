# Rendered by .github/workflows/release.yml on each tag and pushed to
# yarlson/homebrew-tap. Edit this template, not the tap copy.
class Vindu < Formula
  desc "Dynamic tiling window manager for macOS"
  homepage "https://github.com/yarlson/vindu"
  url "https://github.com/yarlson/vindu/releases/download/v0.4.0/vindu-v0.4.0-macos-universal.tar.gz"
  sha256 "58d593fef16300be737dad4c61c25f3326fd15716eec38635ab11405b606056a"
  version "0.4.0"

  depends_on :macos

  def install
    bin.install "vindud", "vinductl"
    pkgshare.install "vindu.conf"
    doc.install "README.md"
  end

  service do
    run [opt_bin/"vindud"]
    keep_alive successful_exit: false
    log_path "/tmp/vindu.log"
    error_log_path "/tmp/vindu.log"
  end

  def caveats
    <<~EOS
      vindu needs the Accessibility permission:
        System Settings → Privacy & Security → Accessibility → enable vindud

      Start now and at login:
        brew services start vindu

      First start writes a default config to ~/.config/vindu/vindu.conf
    EOS
  end

  test do
    assert_match "vindu", shell_output("#{bin}/vindud --version")
  end
end
