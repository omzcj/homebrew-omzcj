class RestoreSymbol < Formula
  desc "Restore symbols in stripped Mach-O binaries"
  homepage "https://github.com/tobefuturer/restore-symbol/"
  url "https://github.com/omzcj/restore-symbol/releases/download/1.0.0/restore-symbol"
  sha256 "44016752de5e3b917707d35fcc39369bc539cbb524fdb8219aba5f15ed7292fa"

  depends_on :macos

  def install
    bin.install "restore-symbol"
  end

  test do
    assert_match "Usage: restore-symbol", shell_output("#{bin}/restore-symbol")
  end
end
