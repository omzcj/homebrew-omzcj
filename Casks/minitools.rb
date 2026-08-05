cask "minitools" do
  version "2026.08.05.2"
  sha256 "ebbe2bd7d2722fe787ebee8ded11f2e9e9f932a2a1afd327ad3d2ce36e453bed"

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
    miniTools requires Accessibility permission for Safari window switching
    and window management. Mouse side-button bindings also require Input
    Monitoring permission. Closed-lid running requires one-time approval for
    the miniTools background service in System Settings.
  EOS
end
