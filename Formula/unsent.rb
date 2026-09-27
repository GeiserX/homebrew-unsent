# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.2.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.2.0/unsent_0.2.0_darwin_arm64.tar.gz"
      sha256 "241b0f8b26dac65de61ef08f5d8f780137b929de6e411da6892315fa9534dbef"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.2.0/unsent_0.2.0_darwin_amd64.tar.gz"
      sha256 "7c11d01005a71c6e6697dda620f573e773aa6c10d325cd5cd7b6b689a83245c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.2.0/unsent_0.2.0_linux_arm64.tar.gz"
      sha256 "4b2d75ed192c0ed6ec26d4ea7ac59fda3aa4c279c590eb45b9342ee148f4a6de"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.2.0/unsent_0.2.0_linux_amd64.tar.gz"
      sha256 "6df479148acd4742aaf4e10d40d8c81a5321aa41bcf0f5ff529493e5fb3df080"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
