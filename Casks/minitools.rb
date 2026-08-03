cask "minitools" do
  version "2026.08.03.2"
  sha256 "42716fff01b854ffa9da4a0a7855f9ae519917bc2142805b39ebe816e5b24ef0"

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
