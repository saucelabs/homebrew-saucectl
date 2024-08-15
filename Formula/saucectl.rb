# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.182.0"

  on_macos do
    on_intel do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.182.0/saucectl_0.182.0_mac_64-bit.tar.gz"
      sha256 "0f6a4e2933f2a7e89c8cf18ab39a02f7cfea6a98fcbfde54785b29663ae9dbad"

      def install
        bin.install "saucectl"
      end
    end
    on_arm do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.182.0/saucectl_0.182.0_mac_arm64.tar.gz"
      sha256 "c094095302e9fd2cfd50272292f8b26df004edccfe24083bafb444661c6cd5f7"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.182.0/saucectl_0.182.0_linux_64-bit.tar.gz"
        sha256 "c423c56673a9b14dfb502356a7165dd82e0564a85d9e716487ddea158a3a7903"

        def install
          bin.install "saucectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.182.0/saucectl_0.182.0_linux_arm64.tar.gz"
        sha256 "fdcb665cc4ac6c3bf7311ef28ec88c54cba3b7583f51e2d0a747c7d001acf752"

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
