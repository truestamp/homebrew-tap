class ItermWorkspace < Formula
  desc "Configurable iTerm2 scripting for launching project workspace programs"
  homepage "https://github.com/truestamp/iterm-workspace"
  url "https://github.com/truestamp/iterm-workspace/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "b1990fb142c78708dbe3ba256a64e8e84931f94c448e824b0d689c1dd4528a3b"
  license "MIT"

  def install
    bin.install "bin/iterm-workspace"
    bin.install "bootstrap-iterm-workspace"
  end

  test do
    system "#{bin}/iterm-workspace"
  end
end
