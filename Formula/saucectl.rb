# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.187.0"

  on_macos do
    on_intel do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.187.0/saucectl_0.187.0_mac_64-bit.tar.gz"
      sha256 "f58a2a855375c852cc5a869524edeb46dcac5bba9f1fda46193a656de70a00bf"

      def install
        bin.install "saucectl"
      end
    end
    on_arm do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.187.0/saucectl_0.187.0_mac_arm64.tar.gz"
      sha256 "d0ed4868ee923753ea9179b0d2cfb263ff14bd98acfc062a48c9a10be2111146"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.187.0/saucectl_0.187.0_linux_64-bit.tar.gz"
        sha256 "05291907e43107d0c2af465e37fdcc2debdef83bc419f7a8c5ccbdfeef47549f"

        def install
          bin.install "saucectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.187.0/saucectl_0.187.0_linux_arm64.tar.gz"
        sha256 "073533c33307212c1d4c7ebdbdd6834bf0345ef1420a1b7c1880a4db67dcaf57"

        def install
          bin.install "saucectl"
        end
      end
    end
  end

  test do
    system "#{bin}/goreleaser", "-v"
  end
end
