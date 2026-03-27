# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.0/shellforge_0.4.0_darwin_arm64.tar.gz"
      sha256 "a084ce4f79e38122fdff8c6223ac74e78a96a8a5d3b84edfb1e7a419fabf368f"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.0/shellforge_0.4.0_darwin_amd64.tar.gz"
      sha256 "ce0d07bd329fb550aefb158e14c44c2a80504466e725067879a82f6479918812"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.0/shellforge_0.4.0_linux_arm64.tar.gz"
      sha256 "d754b365ee38ca1758ed494ead9468430a48b98116161dff8c461d7a53f757db"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.0/shellforge_0.4.0_linux_amd64.tar.gz"
      sha256 "9e5986af3c869f325c87154f05ca76eb30f2e4061c03b60a0ec72cd4a9142ddc"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
