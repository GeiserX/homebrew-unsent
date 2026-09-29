# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.6.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.1/unsent_0.6.1_darwin_arm64.tar.gz"
      sha256 "49adef5858ae4233e0416421d6593bdcb9dc7b9c91937e4fe7823e7bf8cef072"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.1/unsent_0.6.1_darwin_amd64.tar.gz"
      sha256 "7d359bb010d4ac52dbb2a09c93866e513926834641e136e2a691b8935047578e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.1/unsent_0.6.1_linux_arm64.tar.gz"
      sha256 "e749f44adca83351886635a840cf552f880b118f9e69c03ae3636e1b1018b9cb"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.1/unsent_0.6.1_linux_amd64.tar.gz"
      sha256 "6f353181802116e9ac1816e30d009f9697ac501aa9fd07bbdc778ec8d59bbcb7"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
