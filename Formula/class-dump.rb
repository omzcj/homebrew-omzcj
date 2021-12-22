class ClassDump < Formula
  desc "class-dump"
  homepage "http://stevenygard.com/"
  url "https://raw.githubusercontent.com/AloneMonkey/MonkeyDev/master/bin/class-dump"
  sha256 "2b6e88826f053792e496245a39259071ca4dd7accbd3feb6e60d37a245437514"
  version "3.5"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
