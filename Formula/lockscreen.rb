class Lockscreen < Formula
  desc "lockscreen"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/lockscreen.git", branch: "main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
