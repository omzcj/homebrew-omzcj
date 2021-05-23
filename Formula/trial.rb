class Trial < Formula
  desc "Trial"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/trial"
  version "0.0.1"
  sha256 "927f270e494caf4217793dcd334c942140ad77b5350d77ada789c4271af59774"
  license ""

  def install
    bin.install "trial"
  end

  test do
    system "false"
  end
end
