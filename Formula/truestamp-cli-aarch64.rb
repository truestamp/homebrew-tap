class TruestampCliAarch64 < Formula
  desc "Command-line client for the Truestamp API for Apple Silicon Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.1/truestamp-darwin-aarch64-lite.tar.gz"
  sha256 "2c390e4c2b92e640a2cf83bb4efa39ebbf34795be656ccaa1536b2438c2a5745"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
