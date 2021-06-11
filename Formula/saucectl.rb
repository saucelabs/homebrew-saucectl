# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.48.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.2/saucectl_0.48.2_mac_64-bit.tar.gz"
      sha256 "2f1ea3501f5041fd1f20dee763ee663b1e36a411632cbdf670961451f32e5db0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.2/saucectl_0.48.2_mac_arm64.tar.gz"
      sha256 "df7aa4c913777e9520eb5bb4cb55a206a55986848879f5b260a5e6f4e2139767"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.2/saucectl_0.48.2_linux_64-bit.tar.gz"
      sha256 "79caf963be3c7b12a32441e29fbbd64293443244b083ac1df18108c6bcd43ccd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.2/saucectl_0.48.2_linux_arm64.tar.gz"
      sha256 "2ca406578f524f1f09bb5e8d68a0519b2437a737a05fb464e5bd3eb69a370e2b"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
