# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.8/shellforge_0.4.8_darwin_arm64.tar.gz"
      sha256 "3b0a82da5091207c21907f6778862d8eeab2566d3a6242be995e00211846b8d6"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.8/shellforge_0.4.8_darwin_amd64.tar.gz"
      sha256 "5f0d82193b9949b4fc04b6408502817cc96cd83865dcc70b84b19c2f7870187a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.8/shellforge_0.4.8_linux_arm64.tar.gz"
      sha256 "6ef987a62895d80ad64300adb28090cdd9f09b001381e0a135162d178fd225dd"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.8/shellforge_0.4.8_linux_amd64.tar.gz"
      sha256 "c4c3eb5f8ee24f20a597b1f30812871eec110d64b0c676ed3c1a836184e2bda7"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
