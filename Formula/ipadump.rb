class Ipadump < Formula
  desc "ipadump"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/ipadump.git", branch: "main"
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
