# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.40.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.40.1/saucectl_0.40.1_mac_64-bit.tar.gz"
    sha256 "dca3c23a5fa665a6d901f7c6dece412228926961eedc03938693b69d545d5b10"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.40.1/saucectl_0.40.1_mac_arm64.tar.gz"
    sha256 "72c6781a51fdfe221b1cb8f7f56104ffa2c453cf618edaa29856eadd378af97f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.40.1/saucectl_0.40.1_linux_64-bit.tar.gz"
    sha256 "b477e894e31b6519dc8713a05da899282f1afafc11844cd056953bc68a893734"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.40.1/saucectl_0.40.1_linux_arm64.tar.gz"
    sha256 "23e9610dc2c706ca2fa25c3c2eb7744002fa603b496008765429469eab1751c7"
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
