cask "abendrot" do
  version "1.0.8"
  sha256 "5667d6f550a7a20031430e6c0af6186df3232f16333f7353c3e6529d2b019f1f"

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
