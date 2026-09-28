# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.4.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.1/unsent_0.4.1_darwin_arm64.tar.gz"
      sha256 "09d727ab51f0291064592eaa350e169f5aa1d04335ebb9c432328e629f9ea10f"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.1/unsent_0.4.1_darwin_amd64.tar.gz"
      sha256 "5559c01aa628023f1a98de76dfd71168eda5c0ce6918376402b55b5a147dd116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.1/unsent_0.4.1_linux_arm64.tar.gz"
      sha256 "ad4309234dcc19603efae4448daec90b98ff427ca350986f2141163e0d88fcc8"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.1/unsent_0.4.1_linux_amd64.tar.gz"
      sha256 "0ca13defb99fec0ec3e1536b19b01025879af5aeb0ea0de3d84f9ed582a1164e"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
