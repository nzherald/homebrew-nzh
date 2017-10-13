require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.4.2.1"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "0fcffb29fc58407c0d47ff63e9c506506629d491ea679cef89dfa35dbdf04e09"

  bottle do
    root_url "http://bottles.newsapps.nz"
    sha256 "f35c14ece5aad5e604e814723900de5bd503eba7f021908be0c2272c4a81af0c" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
