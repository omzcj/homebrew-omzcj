class Dotfiles < Formula
  desc "dotfiles"
  homepage "https://omzcj.github.io/"
  url "https://codeload.github.com/omzcj/dotfiles/zip/refs/heads/main"
  version "0.0.1"

  depends_on "python3"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end
  
  test do
    system "false"
  end
end
