# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.8.0"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.0/unsent_0.8.0_darwin_arm64.tar.gz"
      sha256 "536bd696684302c744c633dfee9f70a9297b65ad1513dda3323bd1a7f3adaf09"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.0/unsent_0.8.0_darwin_amd64.tar.gz"
      sha256 "8d8f576c0a9bc229a0eccbffc39a0dcdcb87481bc96eeecdd2fe24e597786c0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.0/unsent_0.8.0_linux_arm64.tar.gz"
      sha256 "68dabd7484f559e09f561829a657ac579bba7d08de88c80c477a1cb7586e7b62"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.0/unsent_0.8.0_linux_amd64.tar.gz"
      sha256 "5288de311faceeafbba8a4d7b8b1bbbdead4ee4b32c9b786aa691b2e027e7f51"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
