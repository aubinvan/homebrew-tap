cask "purevalet" do
  version "0.9.2"
  sha256 "be7b63c3ef1fbcd328d156fb8f9b2dd3fd6cb46b0d47e97952643532796cad86"

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
