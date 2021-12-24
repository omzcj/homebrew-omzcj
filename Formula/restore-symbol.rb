class RestoreSymbol < Formula
  desc "restore-symbol"
  homepage "https://github.com/tobefuturer/restore-symbol/"
  url "https://github.com/omzcj/restore-symbol.git", branch: "master"
  version "1.0.0"

  def install
    system "make", "restore-symbol"
    bin.install Dir["restore-symbol"]
  end

  test do
    system "false"
  end
end
