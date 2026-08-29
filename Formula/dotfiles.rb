class Dotfiles < Formula
  desc "Record disk-usage snapshots with ncdu"
  homepage "https://github.com/omzcj/dotfiles"
  url "https://github.com/omzcj/dotfiles/releases/download/v2026.08.29.1/dotfiles-2026.08.29.1.tar.gz"
  sha256 "b1fecee536884a454f19b1391e265dd0131b617626de65e5e428c7c88b328bdf"

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
