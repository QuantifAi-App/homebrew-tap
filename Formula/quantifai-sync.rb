class QuantifaiSync < Formula
  desc "Telemetry sync agent for Quantifai — streams AI tool usage data to your dashboard"
  homepage "https://quantifai.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quantifai-app/sync/releases/download/v0.1.0/quantifai-sync-darwin-arm64.tar.gz"
      sha256 "951a7ea01c63154170fdbb42dcd806ec9436c2fa43e2ac4fcfc88ec15c1b2301"
    else
      url "https://github.com/quantifai-app/sync/releases/download/v0.1.0/quantifai-sync-darwin-amd64.tar.gz"
      sha256 "41ad6144b5df4ca7cac2bfa74f32a580813532c036d8219f666180095075cb6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/quantifai-app/sync/releases/download/v0.1.0/quantifai-sync-linux-arm64.tar.gz"
      sha256 "0248fd6a6df5ba0ec28257a2ed985941f519211a8f33cb9076779fd60dac60ee"
    else
      url "https://github.com/quantifai-app/sync/releases/download/v0.1.0/quantifai-sync-linux-amd64.tar.gz"
      sha256 "d936c6c3589cb71d5ccf87a63008c630df418f9ed2e01b925b24d9c6aec8ce0e"
    end
  end

  def install
    bin.install "quantifai-sync"
  end

  service do
    run [opt_bin/"quantifai-sync", "run"]
    keep_alive true
    log_path var/"log/quantifai-sync.log"
    error_log_path var/"log/quantifai-sync.log"
  end

  def post_install
    ohai "Run 'quantifai-sync install --api-key YOUR_KEY --api-url YOUR_URL' to configure"
  end

  test do
    assert_match "quantifai-sync", shell_output("#{bin}/quantifai-sync version")
  end
end
