class Spoon < Formula
  desc "Lazygit-style Git TUI with a rich commit graph"
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/archive/refs/tags/v0.41.0.tar.gz"
  sha256 "720d2195eab6b7de8459d9f04ffdaa03c57531f8363c8350d42dc6f58bcd0b7b"
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
