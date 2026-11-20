cask "purevalet" do
  version "0.9.0"
  sha256 "e0d3d6d0d1d57991228d4aac6e79ecdf621eb6482737099e362e4d9ec351d559"

  url "https://github.com/aubinvan/purevalet/releases/download/v#{version}/PureValet-#{version}.dmg"
  name "PureValet"
  desc "Menu bar app to run and control Laravel Valet"
  homepage "https://github.com/aubinvan/purevalet"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PureValet.app"

  zap trash: "~/Library/Preferences/dev.aubin.purevalet.plist"

  caveats <<~EOS
    PureValet is not notarized. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/PureValet.app"
  EOS
end
