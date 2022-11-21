class TruestampCli < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.25"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_ARM = "4a966f195d247d541ca336531202caa14cc8760e9a7b13419cc7bea5df14a30b"
  SHA256_DARWIN_X86 = "54b56a44909af8578b884a8d34ee2781a5e5462ec09cd8bdc026666e4649d530"
  SHA256_LINUX_X86 = "a33081f9bf905a90f5c963ae7bb1c8fc9a4e5b24ee4b9e2eabfbe5c8715661a0"

  BASE_URL = "https://github.com/truestamp/truestamp-cli/releases/download"

  version VERSION

  if OS.mac?
    # Which flavor of macOS are we installing on?
    if RbConfig::CONFIG['host_cpu'].include? "x86_64"
      # INTEL
      url "#{BASE_URL}/#{VERSION}/truestamp-darwin-x86_64.tar.gz"
      sha256 SHA256_DARWIN_X86
    else
      # APPLE SILICON
      url "#{BASE_URL}/#{VERSION}/truestamp-darwin-aarch64.tar.gz"
      sha256 SHA256_DARWIN_ARM
    end
  elsif OS.linux?
      url "#{BASE_URL}/#{VERSION}/truestamp-linux-x86_64.tar.gz"
      sha256 SHA256_LINUX_X86
  end

  def install
    bin.install "truestamp"
  end

  test do
    system "#{bin}/truestamp", "version"
  end
end
