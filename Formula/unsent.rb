# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.8.3"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.3/unsent_0.8.3_darwin_arm64.tar.gz"
      sha256 "b1c85fadc4c89ceef6d461837f4578448d4f480420cf99476e6757ad9090fbc9"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.3/unsent_0.8.3_darwin_amd64.tar.gz"
      sha256 "783be5e193920f3d9ed7d0f1397ac62a3f0e273c4bc3dacf40d382912778e048"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.3/unsent_0.8.3_linux_arm64.tar.gz"
      sha256 "cab531fee4554796f708e4df1d22debacc6e04ca21c1cd29f65cf8bc6ff257e1"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.3/unsent_0.8.3_linux_amd64.tar.gz"
      sha256 "978dcf65877900b40af57becc6d5019c2aafda95f61a58c0dda62db8ecd07616"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
