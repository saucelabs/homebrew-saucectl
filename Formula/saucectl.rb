# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.11.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.11.1/saucectl_0.11.1_mac_64-bit.tar.gz"
    sha256 "d3db290ae41a3f5e8de78ea02d442879c4f05ce88ca26af0a6f4946d8243f907"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.11.1/saucectl_0.11.1_linux_64-bit.tar.gz"
      sha256 "31b8e1ce1c41b01827c6aa3f76c18db6a598a1f28e2ea43aa40cb07976695bae"
    end
  end
  
  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
