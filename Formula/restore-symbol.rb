class RestoreSymbol < Formula
  desc "restore-symbol"
  homepage "https://github.com/tobefuturer/restore-symbol/"
  url "https://github.com/omzcj/restore-symbol/releases/download/1.0.0/restore-symbol"
  sha256 "44016752de5e3b917707d35fcc39369bc539cbb524fdb8219aba5f15ed7292fa"
  version "1.0.0"

  def install
    bin.install Dir["restore-symbol"]
  end

  test do
    system "false"
  end
end
