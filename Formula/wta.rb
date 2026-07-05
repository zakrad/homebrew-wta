class Wta < Formula
  desc "Run parallel AI coding agents in isolated git worktrees + tmux, from a TUI dashboard"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "f39226a65d71fc1a35844ae6085c19be07f6d807a9e176b0854f2c513b4d4340"
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
