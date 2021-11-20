class Omzcj < Formula
  desc "omzcj"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/omzcj.git"
  version "0.0.1"
  license ""

  depends_on "app2ipa"
  depends_on "dotfiles"
  depends_on "ds_store"
  depends_on "imgcat"
  depends_on "iterm2-zmodem"
  depends_on "launchpad"
  depends_on "movespace"
  depends_on "trial"

  def install
    system "make", "trial"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
