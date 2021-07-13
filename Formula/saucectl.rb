# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.55.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.55.0/saucectl_0.55.0_mac_64-bit.tar.gz"
      sha256 "61c63e7bdbfd6f0fd051e097d18f293aaaaa01d579d0a62d30012fe9b54efb91"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.55.0/saucectl_0.55.0_mac_arm64.tar.gz"
      sha256 "21584ea83bdc2c2d0193c0c0001bd15f2147a2b14bc627e0ee4f7bdd9536c998"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.55.0/saucectl_0.55.0_linux_64-bit.tar.gz"
      sha256 "724f27e00976beeed9f16a575eb876b9c712d70008d7f4954a29bd26eeb3c20d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.55.0/saucectl_0.55.0_linux_arm64.tar.gz"
      sha256 "19b4c798fa81ee6a6921d2ea4dc8323f42ee08b18cd567fae27aee6614c92020"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
