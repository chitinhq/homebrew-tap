# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.2/shellforge_0.3.2_darwin_arm64.tar.gz"
      sha256 "694f29203e321729a83f6f50a7bd111cb105367b44eeb022956235985c7ec77f"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.2/shellforge_0.3.2_darwin_amd64.tar.gz"
      sha256 "2e14d8775bfee95ac51dc1b559dd7b4c0181ccc5c9fd5af8f78be546a4d9b206"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.2/shellforge_0.3.2_linux_arm64.tar.gz"
      sha256 "5690840f918c1832e9ac2c3f849190f8b2638c9c55dd4f194c365b8dbe811ee5"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.2/shellforge_0.3.2_linux_amd64.tar.gz"
      sha256 "fb23f09e90101c52598bb81c14676ba008afaa5a34b544770b85b4cdab653e10"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
