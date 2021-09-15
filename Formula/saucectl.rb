# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.66.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.0/saucectl_0.66.0_mac_64-bit.tar.gz"
      sha256 "e2bcd9555d68ed20b3ce46b39aab62584cd2c1cdd172e129df155e30f5ce3615"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.0/saucectl_0.66.0_mac_arm64.tar.gz"
      sha256 "b7c0f03cc4561caa1b556d02a3d37027db148fef0e35e383243e74ea64b495bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.0/saucectl_0.66.0_linux_64-bit.tar.gz"
      sha256 "572573eb2012234823cb211f8b9cae8bcb83f15077cadc2676628e8411c87da3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.0/saucectl_0.66.0_linux_arm64.tar.gz"
      sha256 "1e7e75805568078f4df73b2eee4ecc00cfcef6c8e019c5f7f104f43085bc4169"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
