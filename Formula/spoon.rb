class Spoon < Formula
  desc "Lazygit-style Git TUI with a rich commit graph"
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "36e6ec272bfcbb85c3895dd7d56b045a6fc4048c2bbea2f3d5111311e288b113"
  license "MIT"
  head "https://github.com/DanWlker/spoon.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spoon --version")
  end
end
