cask "minitools" do
  version "2026.07.18.1"
  sha256 "21f79f731bf4b93e6c91e661b63e3798628ca1a2795a69827bfe7874775bd2dd"

  url "https://github.com/omzcj/miniTools/releases/download/v#{version}/miniTools-#{version}.zip"
  name "miniTools"
  desc "Clipboard conversion, Safari window switching, and window management utility"
  homepage "https://github.com/omzcj/miniTools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "miniTools.app"

  uninstall quit: "com.omzcj.minitools"

  zap trash: "~/Library/Preferences/com.omzcj.minitools.plist"

  caveats <<~EOS
    miniTools is ad-hoc signed and is not notarized by Apple. If macOS blocks
    the first launch, open System Settings > Privacy & Security and choose
    Open Anyway for miniTools. Accessibility permission is also required.
  EOS
end
