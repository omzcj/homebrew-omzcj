class Iterm2Zssh < Formula
  desc "iterm2-zssh"
  homepage "https://omzcj.github.io/"
  url "https://codeload.github.com/omzcj/iterm2-zssh/zip/refs/heads/main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
