# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.7.1"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.1/unsent_0.7.1_darwin_arm64.tar.gz"
      sha256 "d3b85f63cd46bd9ef5b1a5e5de40ea6eec42ce86156b0dfcd01ed263fdbb79e6"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.1/unsent_0.7.1_darwin_amd64.tar.gz"
      sha256 "bf0c08c36ce53ada46db120c72895f25d09b2f5b7db1baad347f35ab97c67b88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.1/unsent_0.7.1_linux_arm64.tar.gz"
      sha256 "5d07fb8cac234c3bebc38fd1ad611206c7154850d919e817eb7a745708aa1c0d"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.7.1/unsent_0.7.1_linux_amd64.tar.gz"
      sha256 "ba494df977ea2d3893fa99c98a24e34da268a1684dceead6dbdaff6ec62546f5"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
