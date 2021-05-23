class Imgcat < Formula
  desc "imgcat"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/imgcat"
  version "0.0.1"
  sha256 "b5923d2bd5c008272d09fae2f0c1d5ccd9b7084bb8a4912315923fbc3d603cc3"
  license ""

  def install
    bin.install "imgcat"
  end

  test do
    system "false"
  end
end
