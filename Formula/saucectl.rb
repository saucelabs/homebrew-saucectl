# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.102.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.102.0/saucectl_0.102.0_mac_64-bit.tar.gz"
      sha256 "a07177d6e4333f5c9b7242e80ca3697008e8d5152621eea21b8e6713a1d3000f"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.102.0/saucectl_0.102.0_mac_arm64.tar.gz"
      sha256 "9cc5e559c270cdefa3b658aa4104c0e4bcac240defd33d6139f0ff1be06883e9"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.102.0/saucectl_0.102.0_linux_arm64.tar.gz"
      sha256 "c4094552b2bdb7f5fe2146c0bbf8969a5c9cc80e272f765c80df888ec6a8a3b3"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.102.0/saucectl_0.102.0_linux_64-bit.tar.gz"
      sha256 "35d53ba19e43d2736e439e938fe75b25945f16b031da460013d670e5d5133f41"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
