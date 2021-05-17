class TruestampCliX86 < Formula
  desc "Command-line client for the Truestamp API for Intel x86 64 bit Macs"
  homepage "https://github.com/truestamp/truestamp-cli"
  url "https://github.com/truestamp/truestamp-cli/releases/download/v0.0.3/truestamp-darwin-x86_64.tar.gz"
  sha256 "fe58b339b560c3d02b96042bd24965e881ef6e938b983c2cbcf70eb388310614"
  version "v0.0.3"

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
