# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.8.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.2/unsent_0.8.2_darwin_arm64.tar.gz"
      sha256 "3e0ebcac940e109203026a142c84b55db0a754e8b48ccb24667dd10a545dc388"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.2/unsent_0.8.2_darwin_amd64.tar.gz"
      sha256 "1943d31b38b2ad6a7a9f94b7af272bbf1680aaa7d95552237659b0191efc987a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.2/unsent_0.8.2_linux_arm64.tar.gz"
      sha256 "b38671590538fc2679c89f9024b5062d8e466916b91a0f7788eea260282877b8"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.2/unsent_0.8.2_linux_amd64.tar.gz"
      sha256 "0c81b438fb98022119426aa30a1c42db87d5aeb048443c90088917a1d830c32d"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
