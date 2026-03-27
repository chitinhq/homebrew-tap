# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.1/shellforge_0.4.1_darwin_arm64.tar.gz"
      sha256 "a9504eb89ae72af4a41209c299bae71c89a754758b2659af5553ef7b65028ee8"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.1/shellforge_0.4.1_darwin_amd64.tar.gz"
      sha256 "d4e17b6250b23ca902bbd96442c4592b7ade12b87efe35e20a4fa894f28828d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.1/shellforge_0.4.1_linux_arm64.tar.gz"
      sha256 "223664cfc4ee938348f5b9529da243f8137fd0fefc3789c37bac01b3923302f4"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.1/shellforge_0.4.1_linux_amd64.tar.gz"
      sha256 "cbc8854b4bd78b7440bc359d03c7301ce110e88a7c7f99d2c3e0b6ce34e1e92e"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
