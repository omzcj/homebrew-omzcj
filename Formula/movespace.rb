class Movespace < Formula
  desc "movespace"
  homepage "https://movespace.github.io"
  url "https://github.com/omzcj/movespace.git"
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
