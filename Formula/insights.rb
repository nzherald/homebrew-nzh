require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.5.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "71b721fcb59224aa69d44d02e8cf2c107dfe145e45f0c77bebe729af1e7bc5aa"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "ecec75250478a685dacd82c3e6f90174bb8b9004b13e0b9c8f1595d518a0974d" => :high_sierra
    sha256 "d9d638d18f6de84ec14e2e87a437f379f745e05ea2bee5299b0ff39afda1a6c5" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
