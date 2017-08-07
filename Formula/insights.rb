require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.3.2.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "c04ee9864d30a099635c5652b348a123c90f28cdb7436b7f5d95c6043e781d6b"

  bottle do
    root_url "https://github.com/nzherald/homebrew-nzh/raw/master/Bottles"
      sha256 "7ca50cb65a832f3847a31c7b39ac87060faf6ec8e6f541b5293017e9e8459cf9" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
