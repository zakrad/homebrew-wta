class Wta < Formula
  desc "Run parallel AI coding agents in isolated git worktrees + tmux, from a TUI dashboard"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "cb00bfee4629b5aabcc5a4cfeec2a429aafa0183fa46d519f9665fae21c7d2a1"
  license "MIT"
  head "https://github.com/zakrad/wta.git", branch: "main"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/wta --help")
  end
end
