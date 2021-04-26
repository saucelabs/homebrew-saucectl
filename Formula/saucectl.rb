# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.39.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.1/saucectl_0.39.1_mac_64-bit.tar.gz"
    sha256 "9f508fb8055de2e743cc4d4592ed8f24c79e850336a2dcdb3f8840a3719aef7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.1/saucectl_0.39.1_mac_arm64.tar.gz"
    sha256 "5b639a6f9e3252dd1813f6b53d7966d091920c064d86423c73f0a6aa8bd569f8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.1/saucectl_0.39.1_linux_64-bit.tar.gz"
    sha256 "0f194726ebd014054cb15dc8b9c15d3a28be1c2c9ca6db42864584f5614e2d8a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.1/saucectl_0.39.1_linux_arm64.tar.gz"
    sha256 "90f2e48ab151a3cecaba8c78c0e56ccf17a4108b1d792e6a818fc413cbcefb42"
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
