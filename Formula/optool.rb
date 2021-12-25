class Optool < Formula
  desc "optool"
  version "0.1"
  homepage "https://github.com/alexzielenski/optool/"
  url "https://github.com/alexzielenski/optool/releases/download/#{version}/optool.zip"
  sha256 "646effdfc6825eac47bf642609a4fbebe0f8d8abd494c3de99747e27c177a9ac"

  def install
    bin.install Dir["optool"]
  end

  test do
    system "false"
  end
end
