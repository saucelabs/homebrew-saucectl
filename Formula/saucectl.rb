# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.189.1"

  on_macos do
    on_intel do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.189.1/saucectl_0.189.1_mac_64-bit.tar.gz"
      sha256 "7acced63df743d8535fc27ade79b984c204493851ff7a3349a57eb9c9d92e775"

      def install
        bin.install "saucectl"
      end
    end
    on_arm do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.189.1/saucectl_0.189.1_mac_arm64.tar.gz"
      sha256 "dc6b2bc59ab56c051358ce34d4141f0100833a4929bdf767765efec95c6da08c"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.189.1/saucectl_0.189.1_linux_64-bit.tar.gz"
        sha256 "e3ea21dbc066431e47678dda5a2583c493571995ec88d8947c7b5f6d946103c2"

        def install
          bin.install "saucectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.189.1/saucectl_0.189.1_linux_arm64.tar.gz"
        sha256 "b756871217ae9ea3887e5184d4109572467d3a5ccc0cf41cae95927eb1d44c69"

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
