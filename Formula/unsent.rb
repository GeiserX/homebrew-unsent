# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.3.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.3.0/unsent_0.3.0_darwin_arm64.tar.gz"
      sha256 "4c98bbc3d159286ed0b4fdc4dae83a11f5d48467ba42f452b7285e1a0dffc0d9"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.3.0/unsent_0.3.0_darwin_amd64.tar.gz"
      sha256 "db10ed6d1d6b2031e0e7d6f7c7b1431cb217f9a8f04d77b414e701d61b988eb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.3.0/unsent_0.3.0_linux_arm64.tar.gz"
      sha256 "ace7673c1305debbac0530065369abed3cb40bea57fd562c9d9b0d05fbf0bfba"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.3.0/unsent_0.3.0_linux_amd64.tar.gz"
      sha256 "e911ac684fa2c504a7f90b31132bd57afb01d62732fcb93a6c4e81cf27b0a92b"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
