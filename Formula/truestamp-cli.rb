class TruestampCli < Formula
  desc "Command-line client for the Truestamp API"
  homepage "https://github.com/truestamp/truestamp-cli"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.13"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_ARM = "957239e7a64522dceabc320542bcde3328eeebddc33d4b3beb47c2ee07e17b46"
  SHA256_DARWIN_X86 = "e4626dae68512bbe5954ec3dd465456fee088de508f79ba0a7e125d3d1246942"
  SHA256_LINUX_X86 = "bf3a425989edafb929a051d7f1d66f09f61c67196d4e9d541727bc8d795ccba8"

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
