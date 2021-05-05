class TruestampCliX86 < Formula
  desc "Command-line client for the Truestamp API for Intel x86 64 bit Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.2/truestamp-darwin-x86_64-lite.tar.gz"
  sha256 "40fef8b3ab8537d89a939acf45ac1c296ddf821436387b6441a5280326249a61"
  version "v0.0.2"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
