# typed: false
# frozen_string_literal: true

class Clawta < Formula
  desc "Governed AI agent for coding tasks — local Ollama or cloud LLM providers"
  homepage "https://github.com/chitinhq/clawta"
  url "https://github.com/chitinhq/clawta.git", tag: "v0.1.0", revision: "e438b5f"
  license "MIT"
  head "https://github.com/chitinhq/clawta.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/clawta/"
  end

  def caveats
    <<~EOS
      Clawta works with any OpenAI-compatible LLM provider.

      For local inference (no API key needed):
        brew install ollama
        ollama pull qwen2.5-coder:14b
        clawta run --provider ollama --model qwen2.5-coder:14b "your task"

      For cloud providers, set the appropriate API key:
        export ANTHROPIC_API_KEY=...
        export DEEPSEEK_API_KEY=...
        clawta run --provider deepseek --model deepseek-chat "your task"
    EOS
  end

  test do
    assert_match "clawta", shell_output("#{bin}/clawta version")
  end
end
