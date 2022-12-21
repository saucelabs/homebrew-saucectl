# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.117.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.117.1/saucectl_0.117.1_mac_64-bit.tar.gz"
      sha256 "053aaa04a25508e238433aa5d93b935096bbd4bc5bf27fd697f090264dadc98c"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.117.1/saucectl_0.117.1_mac_arm64.tar.gz"
      sha256 "d95d440a27e6369850abd275a2fa63e6256717b4deea7c3b6b12e1d5b95765e9"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.117.1/saucectl_0.117.1_linux_64-bit.tar.gz"
      sha256 "776bf26b17a8e703d2c05c1a6a68af0130c47f2a194cafd27a9c48e4cfba2b61"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.117.1/saucectl_0.117.1_linux_arm64.tar.gz"
      sha256 "17d0f3c970b749efc22e79f95ccf096d6b047fe0ceca7c62f1444f21370a7bb1"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
