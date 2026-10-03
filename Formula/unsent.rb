# typed: false
# frozen_string_literal: true

class Unsent < Formula
  desc "AutoRecover for AI agent prompts: saves what you type into agent CLIs"
  homepage "https://github.com/GeiserX/unsent"
  version "0.8.1"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.1/unsent_0.8.1_darwin_arm64.tar.gz"
      sha256 "bb0eef7b8980c453c492ceb565007c70b682ff0adb34e00ee49df268d327ce61"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.1/unsent_0.8.1_darwin_amd64.tar.gz"
      sha256 "11af8675936b4de211b0e2b2496f3ceec18b93c21cf8a1ec6b705e3f959a6085"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.1/unsent_0.8.1_linux_arm64.tar.gz"
      sha256 "bed54614bb42bfde4b598450e1262f52a89d2687c49c0a7e7a950db175bcc706"
    else
      url "https://github.com/GeiserX/unsent/releases/download/v0.8.1/unsent_0.8.1_linux_amd64.tar.gz"
      sha256 "393fa120a1cc34e4da2527e246355ee7ee77cb1b4916a922e8254dbd68fa7de8"
    end
  end

  def install
    bin.install "unsent"
  end

  test do
    assert_match "unsent", shell_output("#{bin}/unsent version")
  end
end
