require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.2.1.0"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "c5202c2ce9a9c4e326401ab696635aa4f8c62e84e45e586cba428842975dae01"

  bottle do
    root_url "https://github.com/nzherald/homebrew-nzh/raw/master/Bottles"
      sha256 "c053fbd0587655d06054ec88fb61ecaffc5e43d503ce6b7e12e12403d54ae44a" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
