class Wta < Formula
  desc "Run parallel AI coding agents in isolated git worktrees + tmux, from a TUI dashboard"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "edc85f1c4fad2f06a293c10fc9d9afc90e83cb909dc0aa71020758a5214d15a9"
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
