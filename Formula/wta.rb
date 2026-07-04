class Wta < Formula
  desc "Run parallel AI coding agents in isolated git worktrees + tmux, from a TUI dashboard"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "3452cb447a2af443e55c9adcbbc9db2a277f812c9789b0a9d0dfecf88ac3cc93"
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
