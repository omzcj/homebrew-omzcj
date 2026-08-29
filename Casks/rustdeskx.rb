cask "rustdeskx" do
  version "1.4.9.1"
  sha256 "5e1ce65c6cffc1f4bc7b9b8e59e4868abc2e87ee699a4c6becaaba09a7e1d06e"

  url "https://github.com/omzcj/RustDeskX/releases/download/v#{version}/RustDeskX-#{version}-arm64.zip"
  name "RustDeskX"
  desc "Apple Silicon RustDesk rebrand for signed and notarized distribution"
  homepage "https://github.com/omzcj/RustDeskX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "RustDeskX.app"

  uninstall quit: "com.omzcj.rustdeskx"

  zap trash: "~/Library/Preferences/com.omzcj.rustdeskx.plist"

  caveats <<~EOS
    RustDeskX requires Screen & System Audio Recording and Accessibility
    permissions. Enable Input Monitoring if macOS requests it.

    For Tailscale Direct IP access, enable "Allow direct IP access" in
    RustDeskX and connect to <Tailscale-IP-or-MagicDNS-name>:21118.
  EOS
end
