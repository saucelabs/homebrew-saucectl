# This file was generated by GoReleaser. DO NOT EDIT.
class SaucectlInternal < Formula
  desc "Homebrew Formulae to saucectl binaries"
  homepage "https://saucelabs.com"
  version "0.3.17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl-internal/releases/download/v0.3.17/saucectl-internal_0.3.17_mac_64-bit.tar.gz"
    sha256 "bdc9729d02f5e1fac19ecb8432616faea95c1b1cf39877df360f215a3b239679"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl-internal/releases/download/v0.3.17/saucectl-internal_0.3.17_linux_64-bit.tar.gz"
      sha256 "37aa317db97a7e7ce8a32a81b696baf5fdcadd710a1efc34a40eb6d23928fd41"
    end
  end

  def install
    bin.install "saucectl-internal"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
