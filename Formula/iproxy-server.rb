class IproxyServer < Formula
  desc "iproxy-server"
  homepage "https://omzcj.github.io/"
  url "https://omzcj.github.io/"
  version "0.0.1"

  service do
    run [opt_bin/"iproxy", "2222:22"]
    keep_alive true
  end

  test do
    system "false"
  end
end
