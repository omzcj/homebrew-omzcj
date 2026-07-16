class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files"
  homepage "http://stevenygard.com/"
  url "https://github.com/omzcj/class-dump/releases/download/3.6.2/class-dump"
  sha256 "1feaaaf19642d37ad939ed0fa926b7eaa6078c099abce2d8f8ad5edb8527a3e2"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "class-dump"
  end

  test do
    assert_match "Usage: class-dump", shell_output("#{bin}/class-dump --help 2>&1", 2)
  end
end
