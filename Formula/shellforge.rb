# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.2.0/shellforge_0.2.0_darwin_arm64.tar.gz"
      sha256 "3aad0c6ac58c1e372b2f0b3cf10b8cb1a71f634b5f8715a21b2a1c623abc798b"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.2.0/shellforge_0.2.0_darwin_amd64.tar.gz"
      sha256 "069b6a2aba6c81a3f7dbe505d74a21c139689f9ea85391eb6729e735106384e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.2.0/shellforge_0.2.0_linux_arm64.tar.gz"
      sha256 "c5a9bb4437da742a75348dd3e6685369fc8c6d906536daa38afdc14f0a81cda6"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.2.0/shellforge_0.2.0_linux_amd64.tar.gz"
      sha256 "82c469da51752b2a46778880ec9e7904670414b28ad6eb01e8e5cf20c11d8c30"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
