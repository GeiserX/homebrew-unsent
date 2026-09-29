# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.7.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.0/unsent_0.7.0_darwin_arm64.tar.gz"
      sha256 "bf6a6b753918bd2f7fa281c315bc385e38c98c92e47d5ae9f9b6b44be254eded"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.0/unsent_0.7.0_darwin_amd64.tar.gz"
      sha256 "1ee30f348e44328b35250048933213192b0187ea32bfd31f1c4616406730b346"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.0/unsent_0.7.0_linux_arm64.tar.gz"
      sha256 "2616ac20f996cbbf5174c55df53c01186bca7a2854ff8937c3ba4d33f1a9fd91"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.0/unsent_0.7.0_linux_amd64.tar.gz"
      sha256 "d93c33f08855e57e8c90def9c508974611f46ba1a7e85b1cd3f1f02a19ea8dbd"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
