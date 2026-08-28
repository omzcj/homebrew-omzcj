class CodexRemote < Formula
  desc "Manually connect ChatGPT Desktop to the Codex managed app-server"
  homepage "https://github.com/omzcj/codex-remote"
  url "https://github.com/omzcj/codex-remote/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "4fccd04cc554ca8dac5ad69b054f83379cc60028c22b8ece7b8f8d7bca437b2b"
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
