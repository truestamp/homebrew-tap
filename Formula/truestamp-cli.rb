class TruestampCli < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.21"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_ARM = "4617e5b8d397b1071c08cc7c6b4ba071005825858b724b1100392788c03e3050"
  SHA256_DARWIN_X86 = "6c3ee0f44d341661d8a328ee6fc36a403f7e4619c8f9cf4f14f846b8d516e8de"
  SHA256_LINUX_X86 = "1749ed717871fe3421f0589574f6acbd05d7eef48dbabd1de8fc15fde2821fc5"

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
