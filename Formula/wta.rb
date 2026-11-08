class Wta < Formula
  desc "Harness for parallel AI coding agents in isolated git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "a4417fe653e7f23bc5a025b1839de4acd21e5c337e16794c447d7618b6702223"
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
