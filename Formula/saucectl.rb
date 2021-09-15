# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.65.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.65.4/saucectl_0.65.4_mac_64-bit.tar.gz"
      sha256 "54b9014d1303c183fb1ad83b0e793c736c84f6d3ed8c8c3a4256cbc437567cdf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.65.4/saucectl_0.65.4_mac_arm64.tar.gz"
      sha256 "8857495c3e72deacd94099c536dc5e4672c2b0521e7aab4034259e824dfc8e75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.65.4/saucectl_0.65.4_linux_64-bit.tar.gz"
      sha256 "4d5bc52e6c60e40b040140d7e849b9580cff17001f49ba648720a3ad4cad8b99"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.65.4/saucectl_0.65.4_linux_arm64.tar.gz"
      sha256 "7f96750ea745dfacfad8b528dbe0f16ecff8158e158c90b623e52373ad7dece5"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
