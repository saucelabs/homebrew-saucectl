# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.179.2"

  on_macos do
    on_intel do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.179.2/saucectl_0.179.2_mac_64-bit.tar.gz"
      sha256 "dc3d208cb912baf5d33e30aab2b0967d952549b378feaef03b17ba02254715cc"

      def install
        bin.install "saucectl"
      end
    end
    on_arm do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.179.2/saucectl_0.179.2_mac_arm64.tar.gz"
      sha256 "5c1c1a5ec06362c32260bb29fae91dd8f56895d2f82fdad21c67c4beb0e506dd"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.179.2/saucectl_0.179.2_linux_64-bit.tar.gz"
        sha256 "bfc8d8a68f6c44cfadf25d2bd7252a2f3a96af5f5ebdc572a0db04b0f92d55b4"

        def install
          bin.install "saucectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.179.2/saucectl_0.179.2_linux_arm64.tar.gz"
        sha256 "f52d041489d5cf300d634fef3597daac6311e62b0490723e694b5ba81c1d8db4"

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
