class Classdump < Formula
  desc "class-dump"
  homepage "http://stevenygard.com/"
  url "http://stevenygard.com/download/class-dump-3.5.tar.gz"
  version "3.5"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
