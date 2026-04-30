class InsertDylib < Formula
  desc "Command-line utility for inserting a dylib load command into a Mach-O binary"
  homepage "https://github.com/tyilo/insert_dylib"
  url "https://github.com/tyilo/insert_dylib/archive/eb7278162af8fcc372e7f2946a2dee6a386b17d8.tar.gz"
  version "2025.03.29"
  sha256 "016e385412187f18f22fcfb5067b24bbf3176fc9541df44104294c1ed25ad93d"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "insert_dylib.xcodeproj",
               "-configuration", "Release",
               "SYMROOT=build",
               "CODE_SIGNING_ALLOWED=NO"

    bin.install "build/Release/insert_dylib"
  end

  test do
    assert_match "Usage: insert_dylib", shell_output("#{bin}/insert_dylib 2>&1", 1)
  end
end
