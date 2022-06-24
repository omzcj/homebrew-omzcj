cask "i4tools" do
  desc "爱思助手"
  homepage "https://www.i4.cn/"
  version "1.13"
  url "https://d-updater.i4.cn/i4mac/20220418/0/i4Tools_v1.13.010.dmg"
  pkg "i4tools.pkg"
  name "i4tools"

  uninstall pkgutil: "cn.i4tools.mac"

end
