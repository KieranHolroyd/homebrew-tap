class ClaudeCleaner < Formula
  desc "Clean up AI agent git worktrees, dependency/build folders and caches"
  homepage "https://github.com/KieranHolroyd/claude-cleaner"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/KieranHolroyd/claude-cleaner/releases/download/v0.1.0/claude-cleaner_v0.1.0_darwin_arm64.tar.gz"
    sha256 "4c0bbc3b0f1cac74100632d9f3a1da3ca07539a85902b917fddcb9b07ef5160d"
  end
  on_intel do
    url "https://github.com/KieranHolroyd/claude-cleaner/releases/download/v0.1.0/claude-cleaner_v0.1.0_darwin_amd64.tar.gz"
    sha256 "543d29de0110b6dc4408c2be753386a7fa6470e41ddac34908145837911f2ccb"
  end

  def install
    bin.install "claude-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-cleaner -version")
    assert_match "node", shell_output("#{bin}/claude-cleaner -plugins")
  end
end
