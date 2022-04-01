cask "i4tools" do
  desc "爱思助手"
  homepage "https://www.i4.cn/"
  version "1.12.016"
  url "http://d.updater.i4.cn/i4mac/20220304/0/i4Tools_v1.12.016.dmg"
  sha256 "00fe0fb84fde245d1de12b13962acf15fe8f4e35da7a76a70cec20eab95a8b1d"
  
  pkg "i4tools.pkg"
  name "i4tools"

  uninstall pkgutil: "cn.i4tools.mac"

end
