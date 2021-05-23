class Launchpad < Formula
  desc "launchpad"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/launchpad"
  version "0.0.1"
  sha256 "4b381e95d479cb0512962f33cf47b8c8ee42f89b70ab1bf356c960f2d9781d86"
  license ""

  def install
    bin.install "launchpad"
  end

  test do
    system "false"
  end
end
