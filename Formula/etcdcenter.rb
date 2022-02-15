class Etcdcenter < Formula
  desc "etcdcenter"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/etcdcenter.git", branch: "main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  service do
    run [opt_bin/"etcdcenter"]
    keep_alive true
  end

  test do
    system "false"
  end
end
