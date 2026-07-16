class DsStore < Formula
  desc "Monitor and remove .DS_Store files"
  homepage "https://github.com/omzcj/ds_store"
  url "https://github.com/omzcj/ds_store/releases/download/v2026.07.16/ds_store-2026.07.16.tar.gz"
  version "2026.07.16"
  sha256 "8f3185f7fef4c9a9540e8a54750e0c70331b2b569a4adaff84f7a4e7dc2cadb7"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    system "make", "build"
    bin.install Dir["bin/*"]
  end

  service do
    run [opt_bin/"ds_store", "monit"]
    keep_alive true
    log_path var/"log/ds_store.log"
    error_log_path var/"log/ds_store.error"
  end

  test do
    assert_match "ds_store monit", shell_output("#{bin}/ds_store help")
  end
end
