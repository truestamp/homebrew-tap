class TruestampCliAarch64 < Formula
  desc "Command-line client for the Truestamp API for Apple Silicon Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.2/truestamp-darwin-aarch64-lite.tar.gz"
  sha256 "130347426067a82bc98d0072a7fddefe7b5a3e3af0780606cf75356ac9eddaa6"
  version "v0.0.2"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
