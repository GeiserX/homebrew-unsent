# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.7.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.2/unsent_0.7.2_darwin_arm64.tar.gz"
      sha256 "b2e382e4ebb2215e4a9fa60bc3d7d44589d8211f81dce9e637fbf5977ab73cb9"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.2/unsent_0.7.2_darwin_amd64.tar.gz"
      sha256 "d68154b4fdee8de8fdb54a30019faabcd7758b238e984d27794fdadf93a5eda2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.2/unsent_0.7.2_linux_arm64.tar.gz"
      sha256 "f45851626502e38669c3921d45c40f3a2a26fa475caca01ec61a269394a544c8"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.2/unsent_0.7.2_linux_amd64.tar.gz"
      sha256 "3aefdab024f7c184910040983b28b837633ece6be6149d65c9e92769e2b183fe"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
