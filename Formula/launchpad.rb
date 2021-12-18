class Launchpad < Formula
  desc "launchpad"
  homepage "https://omzcj.github.io"
  url "https://github.com/omzcj/launchpad.git", branch: "main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
