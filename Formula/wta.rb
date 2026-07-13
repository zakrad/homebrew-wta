class Wta < Formula
  desc "Terminal harness for parallel AI coding agents in git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.31.tar.gz"
  sha256 "4970425ee99f364728fed59fd84565b21be9668cc0333706fa71f0976cdc8674"
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
