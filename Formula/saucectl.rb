# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.151.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.151.0/saucectl_0.151.0_mac_64-bit.tar.gz"
      sha256 "8189750da1a5209bb02d5bb2430cac1288f2dac383318dc346de41fa6be03368"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.151.0/saucectl_0.151.0_mac_arm64.tar.gz"
      sha256 "c2d4a757730107416abb19eef00b4de76dc22d87dc0e3be0bd21e61be9a95365"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.151.0/saucectl_0.151.0_linux_arm64.tar.gz"
      sha256 "69f12e2bbf4edd4492ea69ccb889f8f621a95f0d9bd5a492de3c661b85d7b851"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.151.0/saucectl_0.151.0_linux_64-bit.tar.gz"
      sha256 "f1851e9b993eee43299cdcb022dac31c66635e74a61cd90acd068092a8fa2a39"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
