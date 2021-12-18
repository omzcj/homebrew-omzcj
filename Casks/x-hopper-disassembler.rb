cask "x-hopper-Disassembler" do
  version "4.0.8"
  sha256 "8dc24161f7d91b754fa67452b4913631905f31b0503cfe00c6c5d09db6ea1313"

  url "https://github.com/omzcj/x-hopper-disassembler/releases/download/#{version}/Hopper.Disassembler.#{version}.dmg"
  name "Hopper Disassembler"
  homepage "https://www.hopperapp.com/HopperGDBServer"

  livecheck do
    url "https://www.hopperapp.com/HopperGDBServer/appcast.xml"
    strategy :sparkle
  end

  app "Hopper Disassembler v4.app"
end
