class Spoon < Formula
  desc "Lazygit-style Git TUI with a rich commit graph"
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/archive/refs/tags/v0.35.0.tar.gz"
  sha256 "d0f3cd0118fb25032e6bac481187a11f0d9a4b261aa4fba424ba6445c5e96ff0"
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
