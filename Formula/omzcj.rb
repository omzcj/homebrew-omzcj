class Omzcj < Formula
  desc "omzcj"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/opt.git"
  version "0.0.1"
  license ""

  def install
    bin.install "bin/app2ipa"
    bin.install "bin/cartool"
    bin.install "bin/dotfiles"
    bin.install "bin/imgcat"
    bin.install "bin/iterm2-recv-zmodem"
    bin.install "bin/iterm2-send-zmodem"
    bin.install "bin/launchpad"
    bin.install "bin/trial"
  end

  test do
    system "false"
  end
end
