# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.52.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.52.3/saucectl_0.52.3_mac_64-bit.tar.gz"
      sha256 "61bb7721752399c816e72269e58ba3f8ac43d561ec8238beb83daca549aa31f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.52.3/saucectl_0.52.3_mac_arm64.tar.gz"
      sha256 "c73c89194775a7fa1d9c6410fc9e126734a23dff5aa9ddfff22b5a545a1b56eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.52.3/saucectl_0.52.3_linux_64-bit.tar.gz"
      sha256 "9675dcc63aa6e84ba7ea6cc3a037efa83581b6e757ab1541f2dbe227eb2707ce"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.52.3/saucectl_0.52.3_linux_arm64.tar.gz"
      sha256 "6ca665097a4260da41e46414571d4ac96c61bed400ce35add7989be184073727"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
