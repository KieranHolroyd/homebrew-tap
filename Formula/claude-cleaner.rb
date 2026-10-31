class ClaudeCleaner < Formula
  desc "Clean up AI agent git worktrees, dependency/build folders and caches"
  homepage "https://github.com/KieranHolroyd/claude-cleaner"
  url "https://github.com/KieranHolroyd/claude-cleaner/releases/download/v0.1.0/claude-cleaner_v0.1.0_darwin_universal.tar.gz"
  sha256 "920abc74eaa83204d39cbf823ad96037ea7305fa3cc04fa1283d18d35fdf61c7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claude-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-cleaner -version")
    assert_match "node", shell_output("#{bin}/claude-cleaner -plugins")
  end
end
