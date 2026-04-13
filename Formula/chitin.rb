# typed: false
# frozen_string_literal: true

class Chitin < Formula
  desc "Programmable control plane for AI coding agents — kernel, gate, soul, session"
  homepage "https://github.com/chitinhq/chitin"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chitinhq/chitin/releases/download/v0.1.0/chitin-darwin-arm64"
      sha256 "d45757d44793dd2296a2753ceb299cd5b2620104e1c71e8d2192de73c72f240c"
    end
    on_intel do
      url "https://github.com/chitinhq/chitin/releases/download/v0.1.0/chitin-darwin-amd64"
      sha256 "9ba970fd2fc5e2b10c75a84c668cef5905fcfc7b9f60626e63ccce581a439c19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chitinhq/chitin/releases/download/v0.1.0/chitin-linux-arm64"
      sha256 "ee6a50e3d866a6e9e2bcabcc40eae5c7ea82a875b9b42eebcab4148ca3b2dd17"
    end
    on_intel do
      url "https://github.com/chitinhq/chitin/releases/download/v0.1.0/chitin-linux-amd64"
      sha256 "b3bef80591e8f4a41c932fff4b7191e67a75585c2e610b5882a753d2ade074a5"
    end
  end

  def install
    # Release assets are raw binaries named `chitin-<os>-<arch>`.
    # Rename to `chitin` on install.
    binary = Dir["chitin-*"].first
    bin.install binary => "chitin"
  end

  def caveats
    <<~EOS
      Chitin is the governance kernel for AI coding agents.

      Get started:
        chitin init claude     # or: copilot, codex, gemini
        chitin status
        chitin evaluate -t Bash -c "git status"

      Companion tools in this tap:
        brew install chitinhq/tap/clawta       # governed coding agent
        brew install chitinhq/tap/shellforge   # local Ollama runtime
    EOS
  end

  test do
    assert_match "chitin", shell_output("#{bin}/chitin version")
  end
end
