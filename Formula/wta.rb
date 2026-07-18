class Wta < Formula
  desc "Harness for parallel AI coding agents in isolated git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.34.tar.gz"
  sha256 "151770b473363918998c136d3c88e79c239edb7983bd172a9c58459350ab1f7d"
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
