require "language/haskell"

class Insights < Formula
  include Language::Haskell::Cabal

  version_number = "0.3.0.0"

  desc "NZH Insights static site build tool"
  homepage "https://github.com/nzherald/insights"
  url "https://github.com/nzherald/insights/archive/#{version_number}.tar.gz"
  sha256 "63238fc9678a833503d48a1f9ff8a9db0f30ad3d4c0c86f994a224b6dd75d239"

  bottle do
    root_url "https://github.com/nzherald/homebrew-nzh/raw/master/Bottles"
      sha256 "fd0d27c7437fee873085d6e62345dbf9e05baeec2ef814a9b457b3a3859f4181" => :sierra
  end

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

end
