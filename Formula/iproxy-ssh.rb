class IproxySsh < Formula
  desc "Run iproxy 2222:22 for SSH over USB"
  homepage "https://omzcj.github.io/"
  url "https://github.com/omzcj/homebrew-omzcj.git", branch: "main"
  version "0.0.1"

  depends_on "libimobiledevice"

  def install
    (bin/"iproxy-ssh").write <<~SH
      #!/bin/sh
      exec "#{Formula["libimobiledevice"].opt_bin}/iproxy" 2222:22
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
