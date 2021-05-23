class Iterm2RecvZmodem < Formula
  desc "iterm2-recv-zmodem"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/iterm2-recv-zmodem"
  version "0.0.1"
  sha256 "b17bf8636a490e2f537b773f1e361a99593d34e2112c2171006d7bc79fdab9b0"
  license ""

  def install
    bin.install "iterm2-recv-zmodem"
  end

  test do
    system "false"
  end
end
