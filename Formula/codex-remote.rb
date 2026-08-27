class CodexRemote < Formula
  desc "Manually connect ChatGPT Desktop to the Codex managed app-server"
  homepage "https://github.com/omzcj/codex-remote"
  url "https://github.com/omzcj/codex-remote/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a4dbdfe9252877b90b68dd4274b695c5f003aae622b45e2457f0176595678961"
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
