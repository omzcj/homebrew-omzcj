class ClassDump < Formula
  desc "class-dump"
  homepage "http://stevenygard.com/"
  url "https://github.com/omzcj/class-dump/releases/download/3.6.0-alpha/class-dump"
  version "3.6.0-alpha"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
