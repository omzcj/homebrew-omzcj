class Dotfiles < Formula
  desc "Record disk-usage snapshots with ncdu"
  homepage "https://github.com/omzcj/dotfiles"
  url "https://github.com/omzcj/dotfiles/archive/ab956da99e978ce96235f825c2a52d0d16cdf1d6.tar.gz"
  version "2026.04.21"
  sha256 "29de8063fc8616aeb9075f2b22bd4395aaeb305b6c30c8196f45d636ebabda2a"

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
