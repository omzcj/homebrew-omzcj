cask "x-cleanmymac" do
  desc "Tool to remove unnecessary files and folders from disk"
  homepage "https://macpaw.com/cleanmymac"
  version "4.8.9"
  url "https://github.com/omzcj/cleanmymac/releases/download/4.8.9/CleanMyMac.X.4.8.9.dmg"
  sha256 "460ceca4fedae42332400c7565b2dcf7b96a52e44d712ff8678306dbcd19de75"
  
  app "CleanMyMac X.app"
  name "CleanMyMac X"

  uninstall delete:     "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
            launchctl:  [
              "com.macpaw.CleanMyMac#{version.major}.Agent",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
              "com.macpaw.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw.CleanMyMac#{version.major}.Updater",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
              "com.macpaw.CleanMyMac#{version.major}",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
            ]

  zap trash: [
    "/Users/Shared/CleanMyMac X",
    "/Users/Shared/CleanMyMac X Menu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/CleanMyMac X",
    "~/Library/Application Support/CleanMyMac X Menu",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Updater",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac #{version.major}.log",
    "~/Library/Logs/CleanMyMac X Menu/HealthMonitor",
    "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
  ]

end