class Trial < Formula
  desc "trial"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/omzcj.git"
  version "0.0.1"
  license ""

  def install
    system "make", "trial"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end