# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.6/shellforge_0.4.6_darwin_arm64.tar.gz"
      sha256 "2b25bb8265371763b44c9e3cb95c6df460e1a83bd245c2d23372700ba7c3af65"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.6/shellforge_0.4.6_darwin_amd64.tar.gz"
      sha256 "c141a00cda57400484dc12c4e0dcf309c2fed1d78af096885899e2c157023d6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.6/shellforge_0.4.6_linux_arm64.tar.gz"
      sha256 "ecc46563708916d319eaafa5aaf80cd6d380a5b320e9b18e1ec40c31eface8c0"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.6/shellforge_0.4.6_linux_amd64.tar.gz"
      sha256 "310269eb9535379bf3437619453fb30a8adfa6df3b6f1a92d5e9d90108c90a8f"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
