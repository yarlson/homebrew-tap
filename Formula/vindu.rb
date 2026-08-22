# Rendered by .github/workflows/release.yml on each tag and pushed to
# yarlson/homebrew-tap. Edit this template, not the tap copy.
class Vindu < Formula
  desc "Dynamic tiling window manager for macOS"
  homepage "https://github.com/yarlson/vindu"
  url "https://github.com/yarlson/vindu/releases/download/v0.6.3/vindu-v0.6.3-macos-universal.zip"
  version "0.6.3"
  sha256 "befb0a69af1aa2bf0906774ddcbd6cc8d7323c26cd5d98e7c87ef24e7b8ea367"

  depends_on :macos

  def install
    bin.install "vindud", "vinductl"
    pkgshare.install "vindu.toml"
    doc.install "README.md", "THIRD_PARTY_NOTICES.md"
  end

  def post_install
    log_dir = Pathname.new("~/Library/Logs/vindu").expand_path
    log_dir.mkpath
    chmod 0700, log_dir
  end

  service do
    run [opt_bin/"vindud"]
    keep_alive successful_exit: false
    log_path Pathname.new("~/Library/Logs/vindu/vindud.log").expand_path
    error_log_path Pathname.new("~/Library/Logs/vindu/vindud.log").expand_path
  end

  def caveats
    <<~EOS
      vindu needs the Accessibility permission:
        System Settings → Privacy & Security → Accessibility → enable vindud

      Start now and at login:
        brew services start vindu

      First start writes a default config to ~/.config/vindu/vindu.toml
    EOS
  end

  test do
    assert_match "vindu", shell_output("#{bin}/vindud --version")
  end
end
