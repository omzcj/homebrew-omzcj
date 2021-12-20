class FridaIosDump < Formula
  desc "frida-ios-dump"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/frida-ios-dump.git", branch: "main"
  version "0.0.1"

  depends_on "pipenv"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
