require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.3.2.2"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "56cc7f4f53272c73cc5de98234d3b5a4dca12ed8046414d037916f0388f7ca78"

  bottle do
    root_url "https://github.com/nzherald/homebrew-nzh/raw/master/Bottles"
      sha256 "bb2591d3956420914028b72bebfc762c19cdd352cd1eb444d7ffe57085c0a669" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
