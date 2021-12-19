cask "hopper-disassembler" do
  version "5.2.0"
  sha256 "1dd4fc0aeb6c5ab64ddd5c956e1d8a7abd25557ac4b2cf3c90baad7ec041f372"

  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  name "Hopper Disassembler"
  desc "Hopper Disassembler"
  homepage "https://www.hopperapp.com/"

  livecheck do
    url "https://www.hopperapp.com/HopperGDBServer/appcast.xml"
    strategy :sparkle
  end

  app "Hopper Disassembler v4.app"
end
