cask "phoenix" do
  version "5.0.0-omzcj.1"
  sha256 "3f4e545c42731c7338f1f6a84079e3807cf15320b3ccdb49449df95ec1b2c5e3"

  url "https://github.com/omzcj/phoenix/releases/download/v#{version}/phoenix-#{version}.zip"
  name "Phoenix"
  desc "Window and app manager scriptable with JavaScript"
  homepage "https://github.com/omzcj/phoenix/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-omzcj\.\d+)$/i)
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Phoenix.app"

  uninstall quit:       [
              "org.khirviko.Phoenix",
              "org.khirviko.Phoenix.Launcher",
            ],
            login_item: "Phoenix"

  zap trash: [
    "~/Library/Application Scripts/org.khirviko.Phoenix.Launcher",
    "~/Library/Caches/org.khirviko.Phoenix",
    "~/Library/Containers/org.khirviko.Phoenix.Launcher",
    "~/Library/HTTPStorages/org.khirviko.Phoenix",
    "~/Library/WebKit/org.khirviko.Phoenix",
  ]

  caveats <<~EOS
    This fork is ad-hoc signed and is not notarized by Apple. If macOS blocks
    the first launch, open System Settings > Privacy & Security and choose
    Open Anyway for Phoenix. Phoenix also requires Accessibility permission.
  EOS
end
