# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.24.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.24.0/saucectl_0.24.0_mac_64-bit.tar.gz"
    sha256 "e75816d47072615d278dc357c2ed49fb6f60afc00bd5188f68f065e559798c2a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.24.0/saucectl_0.24.0_linux_64-bit.tar.gz"
    sha256 "76bde2a383567a6e6e27fb3b521c4a91a1da2bc6ab72730b159547bb819988fc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.24.0/saucectl_0.24.0_linux_arm64.tar.gz"
    sha256 "debc2e371715749585517eab157d9e9cac60d85685a068cbb3964c0ca5e7a366"
  end

  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
