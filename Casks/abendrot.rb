cask "abendrot" do
  version "1.0.2,4"
  sha256 "72fc49bbabdd652c088a552e6ba507560f066f51e1d4e10ac21d7b11249a3247"

  url "https://github.com/matthewrball/abendrot/releases/download/v#{version.csv.first}/Abendrot-#{version.csv.first}.dmg",
      verified: "github.com/matthewrball/abendrot/"
  name "Abendrot"
  desc "Free, open-source per-display screen-warmth app"
  homepage "https://abendrot.app/"

  livecheck do
    url "https://raw.githubusercontent.com/matthewrball/abendrot/main/appcast.xml"
    strategy :sparkle
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
