class Iterm2Zssh < Formula
  desc "Send and receive files with ZMODEM in iTerm2"
  homepage "https://github.com/omzcj/iterm2-zssh"
  url "https://github.com/omzcj/iterm2-zssh/archive/d8eb32f81a394ea7e641239df5ebc2b9eb186c0b.tar.gz"
  version "2021.12.13"
  sha256 "f0c3536064a113b4d8e4f877bd9be88f3c3ba25603d8613c2383291120195524"

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
