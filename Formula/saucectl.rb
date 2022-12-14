# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.116.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.116.0/saucectl_0.116.0_mac_arm64.tar.gz"
      sha256 "33153b97ca81cbf16042355d126bf079a944bc7255b23f8a1e5da968073bd962"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.116.0/saucectl_0.116.0_mac_64-bit.tar.gz"
      sha256 "10f3b4d310a524da8855007317be83fe91ae67717b63bc46f26888d407204510"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.116.0/saucectl_0.116.0_linux_arm64.tar.gz"
      sha256 "0d0754280d278de231564b6dee0fe3f2d7114b635921dbf16b3a5a1d2e8aeca4"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.116.0/saucectl_0.116.0_linux_64-bit.tar.gz"
      sha256 "cde0d645f8d8c24744e22e54725255c879cd0cbe0f81d6b722c81b4d9a9efdb1"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
