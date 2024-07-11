# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Test orchestration with Sauce Labs"
  homepage "https://saucelabs.com/"
  version "0.178.1-beta"

  on_macos do
    on_intel do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.178.1-beta/saucectl_0.178.1-beta_mac_64-bit.tar.gz"
      sha256 "1d08407b85951f4e5165e385ec1b0cb248e7a1bfbf0dc01b87e45f79cd31d4e0"

      def install
        bin.install "saucectl"
      end
    end
    on_arm do
      url "https://github.com/saucelabs/saucectl/releases/download/v0.178.1-beta/saucectl_0.178.1-beta_mac_arm64.tar.gz"
      sha256 "2ffe3384046d11c06208e5da7844490a9ba9bcd0c9a0bafe2e7b25e104dbe70e"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.178.1-beta/saucectl_0.178.1-beta_linux_64-bit.tar.gz"
        sha256 "abdb1d60ef1d70b6189f5a7f305c6f1cbbed0180480ac36e10aec70d3cbd221c"

        def install
          bin.install "saucectl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saucelabs/saucectl/releases/download/v0.178.1-beta/saucectl_0.178.1-beta_linux_arm64.tar.gz"
        sha256 "ee205b265eb86c14805ee61acacf799b3f11062d21536822dc135b792843feb4"

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
