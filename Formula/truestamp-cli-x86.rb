class TruestampCliX86 < Formula
  desc "Command-line client for the Truestamp API for Intel x86 64 bit Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.1/truestamp-darwin-x86_64-lite.tar.gz"
  sha256 "288c8507429e6613e8e80391e45cc0e9b780deb7cd6ed139e87abf0d409c2153"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
