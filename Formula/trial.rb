class Trial < Formula
  desc "trial"
  homepage "https://omzcj.github.io/"
  url "https://codeload.github.com/omzcj/trial/zip/refs/heads/main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
