# typed: false
# frozen_string_literal: true

class Cata < Formula
  desc "Command-line tool for cataloging and analyzing data"
  homepage "https://github.com/AgentGuardHQ/cata"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/cata/releases/download/v1.0.0/cata_1.0.0_darwin_arm64.tar.gz"
      sha256 "a1b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/cata/releases/download/v1.0.0/cata_1.0.0_darwin_amd64.tar.gz"
      sha256 "b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/cata/releases/download/v1.0.0/cata_1.0.0_linux_arm64.tar.gz"
      sha256 "c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef0123"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/cata/releases/download/v1.0.0/cata_1.0.0_linux_amd64.tar.gz"
      sha256 "d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef012345"
    end
  end

  def install
    bin.install "cata"
  end

  test do
    system "#{bin}/cata", "--version"
  end
end