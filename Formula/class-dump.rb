class ClassDump < Formula
  desc "class-dump"
  version "3.6.0-alpha"
  homepage "http://stevenygard.com/"
  url "https://github.com/omzcj/class-dump/releases/download/#{version}/class-dump"
  sha256 "4b772e8f2482626800b745821cc9a631479d550b63d8023002a97381819d73da"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
