# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.98.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.98.1/saucectl_0.98.1_mac_arm64.tar.gz"
      sha256 "4c54cdff993d66a2f0b251e038b003eb712e57fa75bd121991a7dbfdee5c97c9"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.98.1/saucectl_0.98.1_mac_64-bit.tar.gz"
      sha256 "4a1fbb796d3d1db055ea58a8ca9e59dfe8c0109b2acdb76a3547ed751883f4ae"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.98.1/saucectl_0.98.1_linux_arm64.tar.gz"
      sha256 "94413b3810b60bb0a06ad96e3e133d39680216e10153dc5863ce80acf498369b"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.98.1/saucectl_0.98.1_linux_64-bit.tar.gz"
      sha256 "aeadd213a1f834fc171cd2d3dc05c376621eb30b3f62ed9dc83bb02b67d835cd"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
