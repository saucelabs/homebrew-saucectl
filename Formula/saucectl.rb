# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.109.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.109.0/saucectl_0.109.0_mac_arm64.tar.gz"
      sha256 "ce8590f246877d48235e82cec78157e4651d28559e97fcfaa558079fdb6a9714"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.109.0/saucectl_0.109.0_mac_64-bit.tar.gz"
      sha256 "e6f86fc1c9bb5463dbd3c4b0c42fdb3d5e0d3a3eff2dbd39e2aa9358954348cd"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.109.0/saucectl_0.109.0_linux_arm64.tar.gz"
      sha256 "feb2431cffeb9834e61d2a1ad1b9222e079c023be6a695b8f4a05149a3aef412"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.109.0/saucectl_0.109.0_linux_64-bit.tar.gz"
      sha256 "95d4f06c52abe735e4e22b62ea9054f95581d87907f46efee62d123456feafcc"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
