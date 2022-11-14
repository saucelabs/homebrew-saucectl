# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.113.2-beta5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta5/saucectl_0.113.2-beta5_mac_arm64.tar.gz"
      sha256 "5bc8334d115f6d088085778d2651cf36cae6ab7b8934d9f4021a8cb91afbde7b"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta5/saucectl_0.113.2-beta5_mac_64-bit.tar.gz"
      sha256 "53fda977c53a8c27ce7e5bed9d2d37a611bc4ac17d7c30c5aa84031f7e942d14"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta5/saucectl_0.113.2-beta5_linux_arm64.tar.gz"
      sha256 "b1f2496588d34d93157390e26ffea1ea0a1983dce062dd7aefa09bd2a24264b5"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.2-beta5/saucectl_0.113.2-beta5_linux_64-bit.tar.gz"
      sha256 "4e7e176f458699d9b7bee236a2cf452148bc6cdbc39916fdaaffa3b8fe694141"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
