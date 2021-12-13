class Trial < Formula
  desc "trial"
  homepage "https://trial.github.io"
  url "https://github.com/omzcj/trial.git"
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
