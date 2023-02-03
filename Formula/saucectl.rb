# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.122.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.122.0/saucectl_0.122.0_mac_64-bit.tar.gz"
      sha256 "d4101d0f6e3d9908e0bac0a26afbb2dc237bdd11299eca4d1b349eb6737a0d47"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.122.0/saucectl_0.122.0_mac_arm64.tar.gz"
      sha256 "cfdbaf98791659603a626064e4ceaeefa36deee7ad6ff68cb7a129bfbffc65cd"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.122.0/saucectl_0.122.0_linux_arm64.tar.gz"
      sha256 "82aae2fbc2ba5a1a35846730db189316e8be90941ecb00d3263889102f2a6ca3"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.122.0/saucectl_0.122.0_linux_64-bit.tar.gz"
      sha256 "ff058cc31908418403ca0011366e7ca9812174831b634177804feafb1614bb28"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
