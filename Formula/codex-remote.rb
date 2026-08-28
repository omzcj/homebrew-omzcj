class CodexRemote < Formula
  desc "Manually connect ChatGPT Desktop to the Codex managed app-server"
  homepage "https://github.com/omzcj/codex-remote"
  url "https://github.com/omzcj/codex-remote/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "740ea54cb341120689a8ac1d94fc6324408ecbf549ee3c4fcea93ff11e76831e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "codex-remote"
  end

  test do
    assert_match "codex-remote #{version}", shell_output("#{bin}/codex-remote --version")
    assert_match "No LaunchAgent is installed or required", shell_output("#{bin}/codex-remote --help")
  end
end
