class Optool < Formula
  desc "Edit load commands in Mach-O binaries"
  homepage "https://github.com/alexzielenski/optool/"
  url "https://github.com/alexzielenski/optool/releases/download/0.1/optool.zip"
  sha256 "646effdfc6825eac47bf642609a4fbebe0f8d8abd494c3de99747e27c177a9ac"

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "optool"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/optool -h")
  end
end
