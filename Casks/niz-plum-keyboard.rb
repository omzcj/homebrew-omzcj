cask "niz-plum-keyboard" do
  version "1.0.2"
  sha256 "c0614de6ef28d7b5dc10cf55df32946ef47663318cc319aa512b702462848853"

  url "https://github.com/omzcj/niz-plum-keyboard/releases/download/#{version}/niz-plum-keyboard-v#{version}.dmg",
      verified: "github.com/omzcj/niz-plum-keyboard/"
  name "键盘校验工具"
  desc "Niz Plum 键盘校验工具"
  homepage "https://www.nizkeyboard.com/"

  depends_on :macos

  app "键盘校验工具v1.02.app"
end
