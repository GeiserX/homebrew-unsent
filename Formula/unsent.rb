# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.6.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.0/unsent_0.6.0_darwin_arm64.tar.gz"
      sha256 "e8543c3462321fb02ff24b0806fea37ab6a7e209e6be83a8a8f0d880abf34203"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.0/unsent_0.6.0_darwin_amd64.tar.gz"
      sha256 "88a7833f37e32411f769c277e107913f6722642c5e844585a7a80f7a2e6412bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.0/unsent_0.6.0_linux_arm64.tar.gz"
      sha256 "eaab49a52508c9c9d905e513ca45742278594e1ad035b57ed0ab5c77e378a210"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.6.0/unsent_0.6.0_linux_amd64.tar.gz"
      sha256 "092575318c064dec21c96cc63ef6b582d4fdc470b542513f55b29d5fdb625265"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
