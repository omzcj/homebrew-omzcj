class App2ipa < Formula
  desc "app2ipa"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/bin/app2ipa"
  version "0.0.1"
  sha256 "802ba738dc816ec870fadaa5df095e79b933fab32376fe9edb5f799342bb9d24"
  license ""

  def install
    bin.install "app2ipa"
  end

  test do
    system "false"
  end
end
