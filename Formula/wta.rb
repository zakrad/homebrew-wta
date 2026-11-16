class Wta < Formula
  desc "Harness for parallel AI coding agents in isolated git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "29002d7ffdb25b5b9b00095aa729d7f1f101e48a87fb7c0910a5a6736beddabb"
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
