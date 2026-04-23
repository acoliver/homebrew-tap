class BartranslateAco < Formula
  desc "macOS menu bar translation app (ACO fork)"
  homepage "https://github.com/acoliver/BarTranslate"
  url "https://github.com/acoliver/BarTranslate/releases/download/v2.1.2/bartranslate-aco-v2.1.2-universal-apple-darwin.zip", using: :nounzip
  version "2.1.2"
  sha256 "68ae31b1f5a140c52d02845b878ef10b4f5a224b8c7858317c2be17c80fd1dd8"
  license "GPL-3.0-only"

  def install
    system "ditto", "-x", "-k", cached_download, buildpath
    prefix.install "BarTranslateACO.app"
    bin.install_symlink prefix/"BarTranslateACO.app/Contents/MacOS/BarTranslateACO" => "bartranslate-aco"
  end

  def caveats
    <<~EOS
      BarTranslateACO.app was installed to:
        #{prefix}/#{"BarTranslateACO.app"}

      To launch it from Finder, open that app bundle directly. To launch it from
      a shell, run:
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
    assert_predicate bin/"bartranslate-aco", :exist?
  end
end
