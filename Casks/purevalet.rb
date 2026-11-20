cask "purevalet" do
  version "0.9.3"
  sha256 "bcb32d032a475ac251561505a2f095f9ad65a106f90cc727e08f3109d4ce0330"

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
