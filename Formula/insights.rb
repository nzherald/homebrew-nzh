require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.3.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "bfd2c8b816ebe396c2a8cfe08b361fcdc44003a6a9c848b36066199ee135d897"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "a6d5a2f623d0a6e579442988879247508cbfdb7862593fed2c7b6d5e643b45fb" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
