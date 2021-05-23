class Iterm2SendZmodem < Formula
  desc "iterm2-send-zmodem"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/iterm2-send-zmodem"
  version "0.0.1"
  sha256 "a0326ba91ba6d0629ab2e3642602c87ddf7ce3d663865fa88ee2340a30ba562c"
  license ""

  def install
    bin.install "iterm2-send-zmodem"
  end

  test do
    system "false"
  end
end
