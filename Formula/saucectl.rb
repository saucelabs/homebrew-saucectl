# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.131.1-beta1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.131.1-beta1/saucectl_0.131.1-beta1_mac_arm64.tar.gz"
      sha256 "b02ebd36091c07a34f7f93e3885047366aa5b3c497317b2591141053a3cecce5"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.131.1-beta1/saucectl_0.131.1-beta1_mac_64-bit.tar.gz"
      sha256 "39221444eac9c5bfb1c51cd8c3bbb091aeaacd20ab19b1b9c141a95058a93019"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.131.1-beta1/saucectl_0.131.1-beta1_linux_64-bit.tar.gz"
      sha256 "78d92846498df6538ded29a3fa8a5e1e0b6f640918aef438dc6b286157379545"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.131.1-beta1/saucectl_0.131.1-beta1_linux_arm64.tar.gz"
      sha256 "ead8cb106dde433984d2b463a702820e386b12d7a47a287f7356d53b8888c91b"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
