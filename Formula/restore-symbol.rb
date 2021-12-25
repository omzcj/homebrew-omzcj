class RestoreSymbol < Formula
  desc "restore-symbol"
  version "1.0.0"
  homepage "https://github.com/tobefuturer/restore-symbol/"
  url "https://github.com/omzcj/restore-symbol/releases/download/#{version}/restore-symbol"
  sha256 "44016752de5e3b917707d35fcc39369bc539cbb524fdb8219aba5f15ed7292fa"

  def install
    bin.install Dir["restore-symbol"]
  end

  test do
    system "false"
  end
end
