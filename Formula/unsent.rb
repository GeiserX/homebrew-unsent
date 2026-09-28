# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.5.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.1/unsent_0.5.1_darwin_arm64.tar.gz"
      sha256 "5ebe3ff218306725222f92f346474a38e48c1bc94d8245b7ec7fdb65851fec7b"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.1/unsent_0.5.1_darwin_amd64.tar.gz"
      sha256 "6efa58af5a5b3fb61322355f437cbe2c84bf0e383c84ad65d8d3099e0fa3b85c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.1/unsent_0.5.1_linux_arm64.tar.gz"
      sha256 "7bcca0c6e1e509a827ae282d4f8dadb5f719738b0c97f77b72ac4075330d6ebc"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.5.1/unsent_0.5.1_linux_amd64.tar.gz"
      sha256 "1bcc6b9ab15ab0bb0f866020c77faefbe996e0f0ae98906024aa203b9021a34c"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
