class TruestampCli < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.1/truestamp-darwin-x86_64-lite.tar.gz"
  version "0.0.1"
  sha256 "2161cb447efcbf305c96c07e4d4e11bad4f2a4832e7f3d0c5af06e51edbecd6f"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
