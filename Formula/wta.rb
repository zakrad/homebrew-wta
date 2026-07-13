class Wta < Formula
  desc "Harness for parallel AI coding agents in isolated git worktrees + tmux"
  homepage "https://github.com/zakrad/wta"
  url "https://github.com/zakrad/wta/archive/refs/tags/v0.1.33.tar.gz"
  sha256 "65c415ca02b431f3e8a33e131274849a2986339721dd22107c19705eb12fbf08"
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
