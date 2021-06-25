# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.51.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.51.0/saucectl_0.51.0_mac_64-bit.tar.gz"
      sha256 "0f4c731e43ddb695cdf264a64deb9028e1a5143579864b512df9965101e7dd9e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.51.0/saucectl_0.51.0_mac_arm64.tar.gz"
      sha256 "fefebb96937de807abc13a7c0fe683fa9d19f305ae92dd521a70f4d3a1d2cfbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.51.0/saucectl_0.51.0_linux_64-bit.tar.gz"
      sha256 "f7b923153c56441820a81298c26fe62f633eeaf0a6230b2962735deebaf9217d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.51.0/saucectl_0.51.0_linux_arm64.tar.gz"
      sha256 "c34ee076435271b48a809dd420cd55fcc34ea66cbae9616375e0b4d81703d130"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
