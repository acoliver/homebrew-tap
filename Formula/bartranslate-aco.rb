class BartranslateAco < Formula
  desc "macOS menu bar translation app (ACO fork)"
  homepage "https://github.com/acoliver/BarTranslate"
  url "https://github.com/acoliver/BarTranslate/releases/download/v2.1.1/bartranslate-aco-v2.1.1-universal-apple-darwin.zip", using: :nounzip
  version "2.1.1"
  sha256 "6ab3bc4b01b46fa76723d9c7a4a11290048fc6d5c436ab5d86d0a882b53bcf37"
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
