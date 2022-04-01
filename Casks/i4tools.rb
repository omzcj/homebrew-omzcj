cask "i4tools" do
  desc "爱思助手"
  homepage "https://www.i4.cn/"
  version "1.12.016"
  url "https://d.updater.i4.cn/i4mac/20220304/0/i4Tools_v1.12.016.dmg"
  sha256 "cb914e5dfe30a01c709a4b0bc9d32121548ec4593f2b0b2ae21e899f90c55df2"
  
  pkg "i4tools.pkg"
  name "i4tools"

  uninstall pkgutil: "cn.i4tools.mac"

end
