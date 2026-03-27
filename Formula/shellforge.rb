# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.3/shellforge_0.4.3_darwin_arm64.tar.gz"
      sha256 "ae247afbda3c47f28cfa399b2a487c32c42fb7c92e75e9a40bea2faffb7962a0"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.3/shellforge_0.4.3_darwin_amd64.tar.gz"
      sha256 "dafc6253fb7c6504495b2193957ac4036997d2338620f1c6ce6e32aa00ab0f8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.3/shellforge_0.4.3_linux_arm64.tar.gz"
      sha256 "54f5267777acff5350a90a78d35f06294b32ecb4fd581c957fbdd8c7a85576fe"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.3/shellforge_0.4.3_linux_amd64.tar.gz"
      sha256 "2b837a93a14d28321a226429543ff9fcdae0f74867f680ca34e8f437f9a3971a"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
