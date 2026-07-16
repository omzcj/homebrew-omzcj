class Iterm2Zssh < Formula
  desc "Send and receive files with ZMODEM in iTerm2"
  homepage "https://github.com/omzcj/iterm2-zssh"
  url "https://github.com/omzcj/iterm2-zssh/releases/download/v2026.07.16/iterm2-zssh-2026.07.16.tar.gz"
  version "2026.07.16"
  sha256 "29f8e8d5a2417f28b802ed0117bf88af16ed9c24ed5dfec19f4c873cb0766600"

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
