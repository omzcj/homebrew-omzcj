cask "pasty" do
  desc "Pasty"
  homepage "https://github.com/scubers/pasty-release"
  version "0.9.12"
  url "https://github.com/scubers/pasty-release/releases/download/v#{version}/Pasty-#{version}.dmg"
  sha256 :no_check 
  app "Pasty.app"
  name "Pasty"
end
