class ItermWorkspace < Formula
  desc "Configurable iTerm2 scripting for launching project workspace programs"
  homepage "https://github.com/truestamp/iterm-workspace"
  url "https://github.com/truestamp/iterm-workspace/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "de198542a60219bcb848a69df40cfdbe2c170a0c1016ea8800e9a1d3f3f6efa8"
  license "MIT"

  def install
    bin.install "iterm-workspace"
    bin.install "bootstrap-iterm-workspace"
  end

  test do
    system "#{bin}/iterm-workspace"
  end
end
