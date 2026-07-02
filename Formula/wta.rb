class Wta < Formula
  desc "Run parallel AI coding agents in isolated git worktrees + tmux, from a TUI dashboard"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "c93ddc532ecb4a44135fab817d58c3eda9c674720c2b7c62320f60c522005983"
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
