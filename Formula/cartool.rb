class Cartool < Formula
  desc "cartool"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/cartool"
  version "0.0.1"
  sha256 "d4992d2a26dd4d761c288c5e89bfb9423f99dd3c51f6ecdba0c74046de367086"
  license ""

  def install
    bin.install "cartool"
  end

  test do
    system "false"
  end
end
