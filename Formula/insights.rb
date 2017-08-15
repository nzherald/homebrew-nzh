require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.1.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "56cc7f4f53272c73cc5de98234d3b5a4dca12ed8046414d037916f0388f7ca78"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "e5e2377b842e59e4e21398b15414353e25b51604de24ac281a6a6e625dc84270" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
