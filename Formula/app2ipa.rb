class App2ipa < Formula
  desc "app2ipa"
  homepage "https://omzcj.github.io"
  url "https://github.com/omzcj/app2ipa.git", branch: "main"
  version "0.0.1"

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
