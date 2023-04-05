# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.133.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.133.0/saucectl_0.133.0_mac_64-bit.tar.gz"
      sha256 "373b89d221e50862c6bacac9ce99efbcca5b006f373ec3c8b266bbc44440e910"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.133.0/saucectl_0.133.0_mac_arm64.tar.gz"
      sha256 "145bf50fc3294c1141e729ee95ddeee9162178ae08bdd6f576e4740ebcaa4946"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.133.0/saucectl_0.133.0_linux_arm64.tar.gz"
      sha256 "5e518925c20f699880fdc20dd332914117d2b2d3848607224ffd7c618df14460"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.133.0/saucectl_0.133.0_linux_64-bit.tar.gz"
      sha256 "33ad9e8d5f6cd9288d0806926f1bbf4b3104f80f6b725cd10aa06198a6847850"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
