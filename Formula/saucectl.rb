# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.139.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.139.0/saucectl_0.139.0_mac_arm64.tar.gz"
      sha256 "2635cff3f08b3d09460d4ac3651eef7c4fcb2fd0c2f44d6c116553adf964069c"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.139.0/saucectl_0.139.0_mac_64-bit.tar.gz"
      sha256 "d621f3cad166106202ea443abe569f0d5255d09c7e9b0f4e44cc3de741c6bac3"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.139.0/saucectl_0.139.0_linux_arm64.tar.gz"
      sha256 "862759e6ed307cdc9abded8fe5135427820ea426d5ca82e86b61c49e5ceca7c3"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.139.0/saucectl_0.139.0_linux_64-bit.tar.gz"
      sha256 "bb21502fc80f312fc50eedb7df7feb746858688ce66e2ca75c1041b5ed9bbe61"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
