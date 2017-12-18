require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.5.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "2ee2f31b408a82a13601672c6256192edd90d2ce554c3f92dbaf360a6b36172c"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "a211c76007c34cfa53ced29af49cd33947e84467d1698b1d3db9a7ac8eb8d448" => :high_sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
