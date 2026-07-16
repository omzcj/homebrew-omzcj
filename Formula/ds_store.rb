class DsStore < Formula
  desc "Monitor and remove .DS_Store files"
  homepage "https://github.com/omzcj/ds_store"
  url "https://github.com/omzcj/ds_store/archive/dddbd6d741cf7c2484ec88af15ca1d25b9cdcd9c.tar.gz"
  version "2021.12.13"
  sha256 "f22e1d011e4bb8c93c99036ae87fad6e466235340add100765b8bab810d0ba74"

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
