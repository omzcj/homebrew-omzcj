class Dotfiles < Formula
  desc "Record disk-usage snapshots with ncdu"
  homepage "https://github.com/omzcj/dotfiles"
  url "https://github.com/omzcj/dotfiles/releases/download/v2026.07.16/dotfiles-2026.07.16.tar.gz"
  sha256 "3d31068c73045da42ae217018d1f7f8aca086c1e7e3b822359f9b693ff916d22"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "ncdu"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "sh", "-n", bin/"dotfiles"
    assert_match "ncdu", (bin/"dotfiles").read
  end
end
