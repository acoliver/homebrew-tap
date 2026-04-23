cask "bartranslate-aco" do
  version "2.1.0"
  sha256 "ec2433b1bf15ea44036b504e54c0256b16be13bb53ec8d543c255d0e23860b01"

  url "https://github.com/acoliver/BarTranslate/releases/download/v2.1.0/bartranslate-aco-v2.1.0-universal-apple-darwin.zip"
  name "BarTranslateACO"
  desc "macOS menu bar translation app (ACO fork)"
  homepage "https://github.com/acoliver/BarTranslate"

  app "BarTranslateACO.app"

  zap trash: [
    "~/Library/Preferences/com.acoliver.BarTranslateACO.plist",
  ]
end
