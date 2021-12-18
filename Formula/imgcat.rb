class Imgcat < Formula
  desc "imgcat"
  homepage "https://omzcj.github.io"
  url "https://github.com/omzcj/imgcat.git", branch: "main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
