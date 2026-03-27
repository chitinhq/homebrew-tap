# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.0/shellforge_0.3.0_darwin_arm64.tar.gz"
      sha256 "21f2d4fdf5d28c40c751d0c75c469277a10dffea83883f0df94fbc358ff073a0"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.0/shellforge_0.3.0_darwin_amd64.tar.gz"
      sha256 "d7109d1a0a3c214694765902f7436cc914701b4037bf945a71c8fb9aa0233da4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.0/shellforge_0.3.0_linux_arm64.tar.gz"
      sha256 "38558a6823a222f069834812a7f089e5086fb1cbdbaa6c0543f0d21479789fdd"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.0/shellforge_0.3.0_linux_amd64.tar.gz"
      sha256 "1c9664e359f8d8f9b880d9d230e88695a1cacb83373b44257ad751d31834babd"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
