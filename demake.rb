# typed: false
# frozen_string_literal: true

# formula for Demake
class Demake < Formula
  desc "Helper to translate Makefile rules to PyInvoke tasks.py file"
  homepage "https://github.com/edvardm/demake"
  url "https://github.com/edvardm/demake/archive/refs/tags/0.1.4.2.tar.gz"
  sha256 "f844d9a4a87f85e623bc683a7a98e0a09a4f4b3b2c9c8afde8ebb41aaec75bd5"
  license "MIT"

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build
  depends_on "hpack" => :build

  uses_from_macos "ncurses"
  uses_from_macos "zlib"

  def install
    system "hpack"
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
  end

  test do
    puts "testing"
  end
end
