class Wta < Formula
  desc "Terminal harness for parallel AI coding agents in git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.32.tar.gz"
  sha256 "441b9b935a31b420eb1562725279bb3214437d1e1c6ab866b7998b3d3fe64dfd"
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
