require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.4.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "4266b8b31fa99e5b0320e8b3d91dca6eab5617ce1cb06782693015d0878e1efe"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "3d7ba3d93e895b9048833d6389e8db3b6dd4de3dbeccb13c25d532a6fc8c9011" => :sierra
    sha256 "ab35b6fccf0fa8d06b84fb7f86f243f05db646927cbe7cf6a7c2dbd57cd8084c" => :high_sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
