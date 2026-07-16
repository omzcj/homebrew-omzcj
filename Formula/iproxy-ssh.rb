class IproxySsh < Formula
  desc "Run iproxy 2222:22 for SSH over USB"
  homepage "https://github.com/omzcj/homebrew-omzcj"
  url "https://github.com/omzcj/homebrew-omzcj/archive/e34484a58e93d5cdeebda59a292cb9c731d3e66c.tar.gz"
  version "2026.05.28"
  sha256 "449eb3deba9496acaa400e02071d8c5d3c46aaaebf5e61280e26620b8dafef56"

  depends_on "libusbmuxd"

  def install
    (bin/"iproxy-ssh").write <<~SH
      #!/bin/sh
      exec "#{formula_opt_bin("libusbmuxd")}/iproxy" 2222:22
    SH
    chmod 0755, bin/"iproxy-ssh"
  end

  service do
    run [opt_bin/"iproxy-ssh"]
    keep_alive true
    log_path var/"log/iproxy-ssh.log"
    error_log_path var/"log/iproxy-ssh.log"
  end

  test do
    assert_path_exists bin/"iproxy-ssh"
    assert_match "iproxy\" 2222:22", (bin/"iproxy-ssh").read
  end
end
