# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.172.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.172.0/saucectl_0.172.0_mac_arm64.tar.gz"
      sha256 "d587107899b3b6bc04f66d46ae21d61a7e98620e95c45bcf38d38c6debb10f9e"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.172.0/saucectl_0.172.0_mac_64-bit.tar.gz"
      sha256 "fb8adda2d4bbc49b6c0a270789ca975b6086e86fabcfe3eea1f90ec959992030"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.172.0/saucectl_0.172.0_linux_arm64.tar.gz"
      sha256 "37adf93b98c7a21eae1c929db181ce61c6a92edc43f0d40cc5b6af136d049408"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.172.0/saucectl_0.172.0_linux_64-bit.tar.gz"
      sha256 "b6ebc9db6fb4bfed4d665337005f087ea1581287899e9c4ddfccc20694569bab"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
