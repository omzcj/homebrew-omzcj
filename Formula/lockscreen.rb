class Lockscreen < Formula
  desc "Lock the current macOS user session"
  homepage "https://github.com/omzcj/lockscreen"
  url "https://github.com/omzcj/lockscreen/releases/download/v2026.07.16/lockscreen-2026.07.16.tar.gz"
  sha256 "2172f099537b3eea9898ed5b0db1a7dab9e0d8bc2bfcfa8f9af894d978b37366"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    assert_predicate bin/"lockscreen", :executable?
  end
end
