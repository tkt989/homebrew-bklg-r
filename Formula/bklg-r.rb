class BklgR < Formula
  desc "CLI tool for interacting with the Backlog API"
  homepage "https://github.com/tkt989/bklg-r"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/tkt989/bklg-r/releases/download/v0.1.1/bklg-r-aarch64-apple-darwin.tar.gz"
      sha256 "d9da9bda738b8c1d4118944591d9fa13587b217d02f3c6dc24f1f256db2d5fa2"
    end
    on_intel do
      url "https://github.com/tkt989/bklg-r/releases/download/v0.1.1/bklg-r-x86_64-apple-darwin.tar.gz"
      sha256 "fd54686eb07589c9a8598c262c9f24e3b7e0e02501ae4591e656100fbe04cd78"
    end
  end

  on_linux do
    url "https://github.com/tkt989/bklg-r/releases/download/v0.1.1/bklg-r-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c314fa2e7909ab1a38fce375818652a7064e0f57047680ae4babce1a8029e63e"
  end

  def install
    bin.install "bklg-r"
  end

  test do
    system "#{bin}/bklg-r", "--version"
  end
end
