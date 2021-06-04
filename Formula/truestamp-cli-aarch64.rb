class TruestampCliAarch64 < Formula
  desc "Command-line client for the Truestamp API for Apple Silicon Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.4/truestamp-darwin-aarch64.tar.gz"
  sha256 "d0bb8cc56f488f90e0fa38add7040b55b87c282cc0dffb0791ce6ddcd3fa3e33"
  version "v0.0.4"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
