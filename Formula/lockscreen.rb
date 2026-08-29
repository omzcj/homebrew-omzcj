class Lockscreen < Formula
  desc "Lock the current macOS user session"
  homepage "https://github.com/omzcj/lockscreen"
  url "https://github.com/omzcj/lockscreen/releases/download/v2026.08.29.1/lockscreen-2026.08.29.1.tar.gz"
  sha256 "4a97ce2abfeaecfa384420fbf9612d85ad139c03130348e96fd36425c95df04f"

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
