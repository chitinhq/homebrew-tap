# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.5/shellforge_0.4.5_darwin_arm64.tar.gz"
      sha256 "f25ab9b64689cf4f997eb39d18a5de9ff8b0eb939eb9bc41e6671cdf655a8a20"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.5/shellforge_0.4.5_darwin_amd64.tar.gz"
      sha256 "f746d78938b2659944326902693c4485cf0a7993cacdb3c1791eb97921228f49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.5/shellforge_0.4.5_linux_arm64.tar.gz"
      sha256 "43827b461419bbc9780c33c3a929e87bf66cd24073baeb810443932e701dfb5b"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.5/shellforge_0.4.5_linux_amd64.tar.gz"
      sha256 "40320178047c1cb677d4f6fb5ed3c22cb185e64b7381ba0c1d0267e379464dc7"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
