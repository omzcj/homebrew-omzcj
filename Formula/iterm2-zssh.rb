class Iterm2Zssh < Formula
  desc "Send and receive files with ZMODEM in iTerm2"
  homepage "https://github.com/omzcj/iterm2-zssh"
  url "https://github.com/omzcj/iterm2-zssh/releases/download/v2026.08.29.1/iterm2-zssh-2026.08.29.1.tar.gz"
  sha256 "131d408f5ea5908e7c13f387d3db8f3750c8487a0409dccb968b078a808047cc"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "lrzsz"
  depends_on :macos

  def install
    inreplace "src/iterm2-recv-zmodem", "/usr/local/bin/rz", (formula_opt_bin("lrzsz")/"rz").to_s
    inreplace "src/iterm2-send-zmodem", "/usr/local/bin/sz", (formula_opt_bin("lrzsz")/"sz").to_s
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "bash", "-n", bin/"iterm2-recv-zmodem"
    system "bash", "-n", bin/"iterm2-send-zmodem"
    assert_match "lrzsz", (bin/"iterm2-recv-zmodem").read
    assert_match "lrzsz", (bin/"iterm2-send-zmodem").read
  end
end
