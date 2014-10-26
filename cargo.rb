require "formula"

class Cargo < Formula
  homepage "http://crates.io/"
  url "https://static.rust-lang.org/cargo-dist/cargo-nightly-x86_64-apple-darwin.tar.gz"
  version "nightly"
  head "https://github.com/rust-lang/cargo.git"

  depends_on "rust"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
