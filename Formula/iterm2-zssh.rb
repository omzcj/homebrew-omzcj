class Iterm2Zssh < Formula
  desc "iterm2-zssh"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/omzcj.git"
  version "0.0.1"
  license ""

  def install
    system "make", "iterm2-zssh"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
