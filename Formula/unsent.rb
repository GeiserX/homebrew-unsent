# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.0/unsent_0.4.0_darwin_arm64.tar.gz"
      sha256 "e4280a33d342b01e0c10dffc5ea71f9ec4004941966c824a438437f095328746"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.0/unsent_0.4.0_darwin_amd64.tar.gz"
      sha256 "3f3d25eaddc8240a04064fbc1f482cd2fb5415781a7d4d70786516b5669d1d71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.0/unsent_0.4.0_linux_arm64.tar.gz"
      sha256 "005576aad3adc9117dae59d1aae4225d7afcbc0727bb8cd463ba9f5f5ecb0fa8"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.4.0/unsent_0.4.0_linux_amd64.tar.gz"
      sha256 "348ea8b2e07aa4aed9b90f9ae5e4ef3c20e2c373bd2e3ed3e6a99e5363ba3641"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
