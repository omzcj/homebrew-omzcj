class RestoreSymbol < Formula
  desc "restore-symbol"
  homepage "https://github.com/tobefuturer/restore-symbol/"
  url "https://github.com/tobefuturer/restore-symbol.git", branch: "master"
  version "1.0.0"

  def install
    system "make"
    bin.install Dir["restore-symbol"]
  end

  test do
    system "false"
  end
end
