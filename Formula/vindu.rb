# Rendered by .github/workflows/release.yml on each tag and pushed to
# yarlson/homebrew-tap. Edit this template, not the tap copy.
class Vindu < Formula
  desc "Dynamic tiling window manager for macOS"
  homepage "https://github.com/yarlson/vindu"
  url "https://github.com/yarlson/vindu/releases/download/v0.5.0/vindu-v0.5.0-macos-universal.tar.gz"
  sha256 "d8a45048e6cde3a1066db331b4cb751737ef18a8bfde58c7266520afe199a8b6"
  version "0.5.0"

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
