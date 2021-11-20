class Dotfiles < Formula
  desc "dotfiles"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/omzcj.git"
  version "0.0.1"
  license ""

  def install
    system "make", "dotfiles"
    bin.install Dir["bin/*"]
  end
  
  test do
    system "false"
  end
end
