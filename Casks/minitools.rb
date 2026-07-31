cask "minitools" do
  version "2026.07.31.1"
  sha256 "db47c16fbbb8142ce18ad28946fd92aedb24a7068a36578b34d17cb10e7cf1e0"

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
