# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.3/shellforge_0.3.3_darwin_arm64.tar.gz"
      sha256 "cbffdc2a8bb9ad1e6c7ba0355fbb030fb1124caf3b5bc6e15ceb24067eaaef05"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.3/shellforge_0.3.3_darwin_amd64.tar.gz"
      sha256 "bd3a48339f6d200454f4366af16f224494a030d1f7949996abf9dd872b2c9a5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.3/shellforge_0.3.3_linux_arm64.tar.gz"
      sha256 "227a43640d693a88b80e2fe890b961670946f7523f0a061c6c5ac07697a83548"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.3/shellforge_0.3.3_linux_amd64.tar.gz"
      sha256 "2c931bf6846eb670eaf94da66666e2eb2a405c7f295f5816f147a304e8bc9a62"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
