class Iterm2Zssh < Formula
  desc "iterm2-zssh"
  homepage "https://omzcj.github.io"
  url "https://github.com/omzcj/iterm2-zssh.git", branch: "main"
  version "0.0.1"
  license ""

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
