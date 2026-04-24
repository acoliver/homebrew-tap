class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.5/personal-agent-v0.3.5-aarch64-apple-darwin.tar.gz"
  version "0.3.5"
  sha256 "1c54f25c488f9b9aa2d7bdb382d5b5ba0c93c6c340413e6d86965d843e48c08b"
  license "MIT"

  # The release tarball is a PersonalAgent.app bundle (Issue #177).
  # Homebrew strips the archive's single top-level directory while staging,
  # so the formula rebuilds that bundle directory before installation.
  def install
    app = prefix/"PersonalAgent.app"
    app.install "Contents"
    bin.install_symlink app/"Contents/MacOS/PersonalAgent" => "personal-agent"
  end

  def caveats
    <<~EOS
      PersonalAgent ships as a menu-bar agent app with LSUIElement=true
      (no Dock icon, no Cmd-Tab entry).

      "Launch at login" (Settings -> General) is available when you run the
      bundled .app. Homebrew installs the bundle into
        #{prefix}/PersonalAgent.app
      and symlinks the inner binary onto PATH as `personal-agent`.
    EOS
  end

  test do
    app = prefix/"PersonalAgent.app"
    assert_predicate app, :exist?
    assert_predicate app/"Contents/MacOS/PersonalAgent", :exist?
    assert_predicate app/"Contents/Info.plist", :exist?
    assert_predicate bin/"personal-agent", :exist?
  end
end
