class BartranslateAco < Formula
  desc "macOS menu bar translation app (ACO fork)"
  homepage "https://github.com/acoliver/BarTranslate"
  url "https://github.com/acoliver/BarTranslate/releases/download/v2.2.5/bartranslate-aco-v2.2.5-universal-apple-darwin.zip", using: :nounzip
  version "2.2.5"
  sha256 "8c6bef8b863b5461df3e50f3a702bf655c6da4195555fcb224ca2352cb7c997b"
  license "GPL-3.0-only"

  def install
    system "ditto", "-x", "-k", cached_download, buildpath
    prefix.install "BarTranslateACO.app"
    (bin/"bartranslate-aco").write <<~SH
      #!/bin/sh
      exec /usr/bin/open "#{prefix}/BarTranslateACO.app" "$@"
    SH
    chmod 0755, bin/"bartranslate-aco"
  end

  def caveats
    <<~EOS
      BarTranslateACO.app was installed to:
        #{prefix}/#{"BarTranslateACO.app"}

      To launch it from Finder, open that app bundle directly. To launch it from
      a shell through LaunchServices, run:
        bartranslate-aco
    EOS
  end

  def uninstall
    system "defaults", "delete", "com.acoliver.BarTranslateACO" rescue nil
  end

  test do
    assert_predicate prefix/"BarTranslateACO.app", :exist?
    assert_predicate prefix/"BarTranslateACO.app/Contents/Info.plist", :exist?
    assert_predicate prefix/"BarTranslateACO.app/Contents/MacOS/BarTranslateACO", :exist?
    assert_match "exec /usr/bin/open", (bin/"bartranslate-aco").read
    assert_predicate bin/"bartranslate-aco", :exist?
  end
end
