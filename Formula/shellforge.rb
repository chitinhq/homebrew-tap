# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.7/shellforge_0.4.7_darwin_arm64.tar.gz"
      sha256 "26041d0ce09222c5258b67e7999a480f1a285891784ee18f5fa1e2a52a435a88"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.7/shellforge_0.4.7_darwin_amd64.tar.gz"
      sha256 "32c150b80ec867a3cd1c3203ce0bb1fc1dd704e3a67946782ce7b8d10bd08edf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.7/shellforge_0.4.7_linux_arm64.tar.gz"
      sha256 "d7635d08906ef05d28f13ac408c2b2adcb81b9ac7360489adb3c9fbef90bd35a"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.7/shellforge_0.4.7_linux_amd64.tar.gz"
      sha256 "70231389bd751a553a1169b4fc748e5ab9d2cd6c810faabc37396d809ce432a6"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
