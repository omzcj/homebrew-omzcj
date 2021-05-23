class Dotfiles < Formula
  desc "dotfiles"
  homepage "https://assassinor.github.io"
  url "https://raw.githubusercontent.com/assassinor/opt/master/dotfiles"
  version "0.0.1"
  sha256 "df6dfbb5cd25f5f462082bf75cc63f713f93f41be77a77fc058b2626f0ff86c8"
  license ""

  def install
    bin.install "cartool"
  end

  test do
    system "false"
  end
end
