class TruestampCliAarch64 < Formula
  desc "Command-line client for the Truestamp API for Apple Silicon Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.3/truestamp-darwin-aarch64.tar.gz"
  sha256 "c6fd4a9ee07df86cfec77db264c609e75fe953aca507cc4ea688e39847dd0f71"
  version "v0.0.3"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
