class ItermWorkspace < Formula
  desc "Configurable iTerm2 scripting for launching project workspace programs"
  homepage "https://github.com/truestamp/iterm-workspace"
  url "https://github.com/truestamp/iterm-workspace/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "fae8e1d3980e4a284f9a0e64ab55fab9710750ebd79b1ac6769fcaafccce9230"
  license "MIT"

  def install
    bin.install "bin/iterm-workspace"
  end

  test do
    system "#{bin}/iterm-workspace"
  end
end
