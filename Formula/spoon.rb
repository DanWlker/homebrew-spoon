class Spoon < Formula
  desc "Lazygit-style Git TUI with a rich commit graph"
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "d68a3b5f782ba6e22a3f0401a7bb349ba51db09cece091a7b62b1539dafdb61c"
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
