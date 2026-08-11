class Wta < Formula
  desc "Harness for parallel AI coding agents in isolated git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cfac489f67ddb5fa3a578e0417499d20d5bc8a59ec594e319814880743ee6b55"
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
