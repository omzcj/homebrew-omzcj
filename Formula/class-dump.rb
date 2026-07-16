class ClassDump < Formula
  desc "Generate Objective-C headers from Mach-O files"
  homepage "http://stevenygard.com/"
  url "https://github.com/omzcj/class-dump/releases/download/#{version}/class-dump"
  version "3.6.0-alpha"
  sha256 "4b772e8f2482626800b745821cc9a631479d550b63d8023002a97381819d73da"

  depends_on :macos

  def install
    bin.install "class-dump"
  end

  test do
    assert_match "Usage: class-dump", shell_output("#{bin}/class-dump --help 2>&1", 2)
  end
end
