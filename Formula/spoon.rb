class Spoon < Formula
  desc "Lazygit-style Git TUI with a rich commit graph"
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/archive/refs/tags/v0.44.0.tar.gz"
  sha256 "bf917cff4671b92720b316e23b2ae4b1d20bae679a6d6133b23aeefbff5fcb7c"
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
