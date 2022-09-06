# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.107.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.107.0/saucectl_0.107.0_mac_64-bit.tar.gz"
      sha256 "3e6d478729036417fe2e8acb5a4da4489d834d05ec6cc7807c75c70d742e7bb6"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.107.0/saucectl_0.107.0_mac_arm64.tar.gz"
      sha256 "fe68c6d7f7f95a5345af68661861e95321f4f9982ef3034309784ebde2dc361d"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.107.0/saucectl_0.107.0_linux_64-bit.tar.gz"
      sha256 "65796753d00eab842bd0d74d972d57ebcd9b6b8635a4d72e7577e734a6633e08"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.107.0/saucectl_0.107.0_linux_arm64.tar.gz"
      sha256 "625fd21f2825d110e1f6463ab9534785fdb4fdbe3e37365cd104a182c0aa433a"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
