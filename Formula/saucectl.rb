# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.135.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.135.0/saucectl_0.135.0_mac_64-bit.tar.gz"
      sha256 "49ad84cd957c34d79c896de719ba93501fe816ea6aa9dbda17ba74b4113467ae"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.135.0/saucectl_0.135.0_mac_arm64.tar.gz"
      sha256 "26576ed1666fdb6c6832bd731afa65ca307c05d70f8c0a6d59be818dabe20339"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.135.0/saucectl_0.135.0_linux_64-bit.tar.gz"
      sha256 "ff8abfba9fe144fa3dd2a0830ec51f2fbbd988ca5f81e99dca071de3459e875e"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.135.0/saucectl_0.135.0_linux_arm64.tar.gz"
      sha256 "8ffc79cdb6df2f7772753c7e7ff6ab56a6911cf1f57fd0880b50e7c5bbbe6b6f"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
