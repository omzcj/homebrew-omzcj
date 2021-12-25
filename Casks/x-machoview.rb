cask "x-machoview" do
  version "2.6.1"
  sha256 "9860bc267fa8fe2540447da4a3381dc5e38c61f74367b14c1ffca88a6fca935a"

  url "https://github.com/fangshufeng/MachOView/releases/download/#{version}/MachOView-#{version}.dmg"
  name "MachOView"
  desc "Visual Mach-O file browser"
  homepage "https://sourceforge.net/projects/machoview/"

  app "MachOView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/machoview.sfl2",
    "~/Library/Preferences/MachOView.plist",
  ]
end
