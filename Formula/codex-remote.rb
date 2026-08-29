class CodexRemote < Formula
  desc "Manually connect ChatGPT Desktop to the Codex managed app-server"
  homepage "https://github.com/omzcj/codex-remote"
  url "https://github.com/omzcj/codex-remote/releases/download/v2026.08.29.1/codex-remote-2026.08.29.1.tar.gz"
  sha256 "84bdd243d5a6ee8f739c7c09edd1ba3af563b566c746859ce4294c90da6b5d7e"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "codex-remote"
  end

  test do
    assert_match "codex-remote #{version}", shell_output("#{bin}/codex-remote --version")
    assert_match "No LaunchAgent is installed or required", shell_output("#{bin}/codex-remote --help")
  end
end
