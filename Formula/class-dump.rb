class ClassDump < Formula
  desc "class-dump"
  homepage "http://stevenygard.com/"
  url "https://github.com/omzcj/class-dump.git", branch: "master"
  version "3.5"

  def install
    bin.install Dir["class-dump"]
  end

  test do
    system "false"
  end
end
