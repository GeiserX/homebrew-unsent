# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.0/unsent_0.5.0_darwin_arm64.tar.gz"
      sha256 "5385003bf43ac00495066713a92b166e921ffbd897b27fc64854391796ca4de8"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.0/unsent_0.5.0_darwin_amd64.tar.gz"
      sha256 "fd21558410cac1f615826b92d13cd1329c9af334b48f0989bc13661baa0f1bd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.0/unsent_0.5.0_linux_arm64.tar.gz"
      sha256 "43ce8abc4fe10f42fb66475d98010bc0a30dfeee1e151822f8300d1ed9b50088"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.0/unsent_0.5.0_linux_amd64.tar.gz"
      sha256 "de87d0ec739c8b53123d5fad68d880614bc0e26d8d761f6291995405481df166"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
