cask "abendrot" do
  version "1.0.9"
  sha256 "c2fccd55acbea2456e0c8f15e0ac28eba1ad38237eb4f7509465bc6ba8f4a72b"

  url "https://github.com/matthewrball/abendrot/releases/download/v#{version}/Abendrot-#{version}.dmg",
      verified: "github.com/matthewrball/abendrot/"
  name "Abendrot"
  desc "Free, open-source per-display screen-warmth app"
  homepage "https://abendrot.app/"

  livecheck do
    url "https://raw.githubusercontent.com/matthewrball/abendrot/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
