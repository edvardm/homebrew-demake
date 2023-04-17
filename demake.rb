# typed: false
# frozen_string_literal: true

# formula for Demake
class Demake < Formula
  desc "Helper to translate Makefile rules to PyInvoke tasks.py file"
  homepage "https://github.com/edvardm/demake"
  url "https://github.com/edvardm/demake/archive/refs/tags/0.1.6.tar.gz"
  sha256 "cb5bfa1d1095d1c114a266b36aa5ca3e72e751ad3d3c14cc01184c0789fc02db"
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
