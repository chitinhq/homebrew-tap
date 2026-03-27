# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.6.0/shellforge_0.6.0_darwin_arm64.tar.gz"
      sha256 "c6ccc902c83e88313220a2d57002f168a81c1cda5596a5a9b64493a673b761b6"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.6.0/shellforge_0.6.0_darwin_amd64.tar.gz"
      sha256 "44413965f4b90359de618219363501cbc19604c51e7e1aea82016cfd567f22c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.6.0/shellforge_0.6.0_linux_arm64.tar.gz"
      sha256 "0a436888aa3704a1d21554dc37149fb52211c5e3b965c360d0c35b15ee8692b2"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.6.0/shellforge_0.6.0_linux_amd64.tar.gz"
      sha256 "734b74619d1bd30f99b942e2b572429aeeb8e4038e6b98cdd0ac21ddc9bbc46f"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
