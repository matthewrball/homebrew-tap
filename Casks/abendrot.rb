cask "abendrot" do
  version "1.1.13"
  sha256 "06db75827744dccd19940aabeae9eb21a06ca5af405365d3f8cbe82a6155d96a"

  url "https://github.com/matthewrball/abendrot/releases/download/v#{version}/Abendrot-#{version}.dmg"
  name "Abendrot"
  desc "Free, open-source per-display screen-warmth app"
  homepage "https://abendrot.app/"

  livecheck do
    url "https://raw.githubusercontent.com/matthewrball/abendrot/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Abendrot.app"
  binary "#{appdir}/Abendrot.app/Contents/Helpers/abendrot"

  uninstall quit: "app.abendrot.Abendrot"

  zap trash: [
    "~/Library/Application Support/Abendrot",
    "~/Library/Caches/app.abendrot.Abendrot",
    "~/Library/HTTPStorages/app.abendrot.Abendrot",
    "~/Library/Preferences/app.abendrot.Abendrot.plist",
    "~/Library/Saved Application State/app.abendrot.Abendrot.savedState",
  ]
end
