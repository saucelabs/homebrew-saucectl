# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.129.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.129.0/saucectl_0.129.0_mac_64-bit.tar.gz"
      sha256 "a31eccceac97ac3626e4ce1a532f585362987cc198cff9adc8ac822369e256cf"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.129.0/saucectl_0.129.0_mac_arm64.tar.gz"
      sha256 "7a68bd3d5c9ac17fc47581ce67f70f199e5fe5d20a576b24de4afbbf49427bbc"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.129.0/saucectl_0.129.0_linux_arm64.tar.gz"
      sha256 "2b0c14f9bdfe55ddeef3079df680d62df0ccc5467e43db2ec83551b793afce01"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.129.0/saucectl_0.129.0_linux_64-bit.tar.gz"
      sha256 "96197bdf3fe2eb8d3c20f58e308044ae6dbaf020b311e62c8e1089c8828fb2e3"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
