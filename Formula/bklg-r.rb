class BklgR < Formula
  desc "CLI tool for interacting with the Backlog API"
  homepage "https://github.com/tkt989/bklg-r"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/tkt989/bklg-r/releases/download/v0.1.0/bklg-r-aarch64-apple-darwin.tar.gz"
      sha256 "5727c92ea9239a10655ca6e917dea16e36402995a50993bb6d48b9552a4e025a"
    end
    on_intel do
      url "https://github.com/tkt989/bklg-r/releases/download/v0.1.0/bklg-r-x86_64-apple-darwin.tar.gz"
      sha256 "6fa27498ae3a8686f4413c541612424efbbacf150af6103e95a91130af673166"
    end
  end

  on_linux do
    url "https://github.com/tkt989/bklg-r/releases/download/v0.1.0/bklg-r-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "367ab4792454f28bc6b6c579d104b1f2eedd43f0a37560ec0f1beaaf5886add3"
  end

  def install
    bin.install "bklg-r"
  end

  test do
    system "#{bin}/bklg-r", "--version"
  end
end
