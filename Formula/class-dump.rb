class ClassDump < Formula
  desc "class-dump"
  homepage "http://stevenygard.com/"
  url "http://stevenygard.com/download/class-dump-3.5.tar.gz"
  sha256 "b08134f8efbfaf3bb0c6cb4fc3bd9865b95860d31ea363d9e67a990ed7215bf9"
  version "3.5"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
