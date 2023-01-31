# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.121.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.121.0/saucectl_0.121.0_mac_arm64.tar.gz"
      sha256 "0d82f6d3d907db0884e0ff8798407b96ccdcaed6f1546134d56ccfadafb87ae5"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.121.0/saucectl_0.121.0_mac_64-bit.tar.gz"
      sha256 "8ce5d1c9bc98fff02553989369b244f29d1dc891bdcdbcd4bed1e85ee11169a6"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.121.0/saucectl_0.121.0_linux_arm64.tar.gz"
      sha256 "e64a75d32ee579fc464f3a77a690d1c240cbe09f6967c0620f52464cd9a343e3"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.121.0/saucectl_0.121.0_linux_64-bit.tar.gz"
      sha256 "6d549ef1cfbe22af610f7c25cddf8858c9f76869c206bdd0768e811306225f31"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
