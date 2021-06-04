class TruestampCliX86 < Formula
  desc "Command-line client for the Truestamp API for Intel x86 64 bit Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.4/truestamp-darwin-x86_64.tar.gz"
  sha256 "2e8fe8a0751916be9250ee557e555a9e6f599f6d823178f3c63b8633046bea25"
  version "v0.0.4"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
