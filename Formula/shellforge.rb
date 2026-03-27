# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.1/shellforge_0.5.1_darwin_arm64.tar.gz"
      sha256 "dd4eb0d7094e528a3936da122b5b71d1574289ca02cbe8dd26c2fa46f48ad746"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.1/shellforge_0.5.1_darwin_amd64.tar.gz"
      sha256 "f1e673cc73ed0d518a916c518a75c6d2eb20ab0b0f6046014d152c84c020785b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.1/shellforge_0.5.1_linux_arm64.tar.gz"
      sha256 "37433b72a3509693f3915745c9307057c62f4f98fe4a247b9210c045aced51c3"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.1/shellforge_0.5.1_linux_amd64.tar.gz"
      sha256 "5a879da499b2af6892ceb6ce005f5e244500011f8fa6e2dec9a36eed9f2c3a9e"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
