class TruestampCli < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.26"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_ARM = "f59283d3236a28545efb1e95bcd38adfd0a27f91315877b02f94840da7bdae28"
  SHA256_DARWIN_X86 = "0d69f149130e81957aef64324195c6486d069dd924205578710757f27f8af273"
  SHA256_LINUX_X86 = "08a4c41beddf203605722ad4f74b0b2ac9703075feaaed8cff448b4b7208cd50"

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
