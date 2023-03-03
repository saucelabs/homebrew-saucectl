# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.127.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.127.0/saucectl_0.127.0_mac_64-bit.tar.gz"
      sha256 "cf203d9bf5ac48f77fbdace49fee7b210b6e07448e37502f4350c123f78ba75e"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.127.0/saucectl_0.127.0_mac_arm64.tar.gz"
      sha256 "4dac4ece2e6cc5df4e24b5c7f33ad20f25de8ab531c17e07a7adb189d6306270"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.127.0/saucectl_0.127.0_linux_arm64.tar.gz"
      sha256 "0ecf039482f62f9d523924ea6d3bf46b56c9fdbfe63bdfbdf312686b33639c44"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.127.0/saucectl_0.127.0_linux_64-bit.tar.gz"
      sha256 "fe0e68d777c8b362acc7920dc9f144a3b85271028935c3ac37f7934101e022f6"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
