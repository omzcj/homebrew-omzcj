class Iterm2Zmodem < Formula
  desc "iterm2-zmodem"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/omzcj.git"
  version "0.0.1"
  license ""

  def install
    system "make", "iterm2-zmodem"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
