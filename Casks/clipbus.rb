cask "clipbus" do
  version "1.1.3"
  sha256 "bd492cafa5581bac81b5290885e0b7ecc13a792165a44037619f1aca666aa345"

  url "https://github.com/scubers/clipbus-release/releases/download/v#{version}/Clipbus-#{version}.zip"
  name "Clipbus"
  desc "Clipboard history manager"
  homepage "https://github.com/scubers/clipbus-release"

  livecheck do
    url "https://raw.githubusercontent.com/scubers/clipbus-release/gh-pages/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Clipbus.app"
end
