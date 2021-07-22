class TruestampCliX86 < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"

  # Shared version constant
  VERSION = "v0.0.4"
  SHA256_DARWIN_X86 = "2e8fe8a0751916be9250ee557e555a9e6f599f6d823178f3c63b8633046bea25"
  SHA256_DARWIN_ARM = "d0bb8cc56f488f90e0fa38add7040b55b87c282cc0dffb0791ce6ddcd3fa3e33"
  SHA256_LINUX_X86 = "4197b97b608a1778285830706098f560e92e0441227fa67816de6ecbaa964b44"

  version VERSION

  if OS.mac?
    # Which flavor of macOS are we installing on?
    if RbConfig::CONFIG['host_cpu'].include? "x86_64"
      # INTEL
      url "https://github.com/truestamp/truestamp-cli/releases/download/#{VERSION}/truestamp-darwin-x86_64.tar.gz"
      sha256 SHA256_DARWIN_X86
    else
      # APPLE SILICON
      url "https://github.com/truestamp/truestamp-cli/releases/download/#{VERSION}/truestamp-darwin-aarch64.tar.gz"
      sha256 SHA256_DARWIN_ARM
    end
  elsif OS.linux?
      url "https://github.com/truestamp/truestamp-cli/releases/download/#{VERSION}/truestamp-linux-x86_64.tar.gz"
      sha256 SHA256_LINUX_X86
  end

  bottle :unneeded

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
