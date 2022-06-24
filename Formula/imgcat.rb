class Imgcat < Formula
  desc "imgcat"
  homepage "https://omzcj.github.io/"
  url "https://codeload.github.com/omzcj/imgcat/zip/refs/heads/main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
