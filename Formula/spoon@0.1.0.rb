class SpoonAT010 < Formula
  desc "A lazygit-style git client in your terminal, with a rich commit graph. Aiming to approach the UX of fork."
  homepage "https://github.com/DanWlker/spoon"
  url "https://github.com/DanWlker/spoon/releases/download/v0.1.0/spoon"
  sha256 ""
  license "MIT"

  def install
    bin.install 'spoon'
  end

  test do
    system "false"
  end
end
