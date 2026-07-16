class Lockscreen < Formula
  desc "Lock the current macOS user session"
  homepage "https://github.com/omzcj/lockscreen"
  url "https://github.com/omzcj/lockscreen/archive/f40a4ebd5a140c4cfd834e916b83d3b88b705d71.tar.gz"
  version "2022.01.12"
  sha256 "6f36b5426f800e94a96b3245766a7388ee4949615a39ce1d68472c8bac3870c2"

  depends_on :macos

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    assert_predicate bin/"lockscreen", :executable?
  end
end
