cask "rustdeskx" do
  version "1.4.9.2"
  sha256 "14073312432c2b548f3f9335bcd8991c629c3fed8b32c2d854e3136602938101"

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
