class Ipatool < Formula
  desc "ipatool"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/ipatool.git", branch: "main"
  version "0.0.1"

  depends_on "pipenv"
  depends_on "libusbmuxd"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  service do
    run [opt_bin/"ipatool", "server"]
    keep_alive true
  end

  test do
    system "false"
  end
end
