# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.6/shellforge_0.3.6_darwin_arm64.tar.gz"
      sha256 "ef71285637917bbd407fa59b3408fdbeefeaccceab38473c6c41426c247273be"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.6/shellforge_0.3.6_darwin_amd64.tar.gz"
      sha256 "5d3dc7c6cac93b78d9aa24c218a31c9b10b9af40a2b65f7645a58c3c64d1ffb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.6/shellforge_0.3.6_linux_arm64.tar.gz"
      sha256 "91be246a6c0ad7a72f5bac15ef07d7fbc0924385332747335b02bcbfd7752736"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.6/shellforge_0.3.6_linux_amd64.tar.gz"
      sha256 "1d0dc281487d1dc7e82a1e1ee5c16c68a7b22c5059ec64a1bbb6990fba53b8aa"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
