class DsStore < Formula
  desc "ds_store"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/ds_store.git", branch: "main"
  version "0.0.1"

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
    system "false"
  end
end
