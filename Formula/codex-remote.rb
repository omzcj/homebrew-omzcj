class CodexRemote < Formula
  desc "Manually connect ChatGPT Desktop to the Codex managed app-server"
  homepage "https://github.com/omzcj/codex-remote"
  url "https://github.com/omzcj/codex-remote/archive/refs/tags/v2026.08.29.tar.gz"
  sha256 "f0689443b150f28721e7bb3b8f3c3a4664945b5d13fc41414fcef7ddf757ce9b"
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
