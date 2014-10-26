require "formula"

class Cargo < Formula
  homepage "http://doc.crates.io/"
  head "https://github.com/rust-lang/cargo.git" # , :revision => "commit"

  depends_on "rust"
  depends_on "cmake" => :build
  depends_on "pkg-config"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
