# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.125.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.125.0/saucectl_0.125.0_mac_arm64.tar.gz"
      sha256 "2b54b62d93ef62e692c103c26c91f68d3c365837d69e984f81aeb6fb4a1883a0"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.125.0/saucectl_0.125.0_mac_64-bit.tar.gz"
      sha256 "dea95ff3844223541739aafd6a3f21c47e2c339b8e238c0703fb0087e720ff77"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.125.0/saucectl_0.125.0_linux_arm64.tar.gz"
      sha256 "35a257ef77e3ab17e8713c43a89058caa7dad7aed7042f948037ca7f305a7bbf"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.125.0/saucectl_0.125.0_linux_64-bit.tar.gz"
      sha256 "388b04c78244ac8ef5e0b35119e59043e01120f1c9ea67d6317169be3d86980e"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
