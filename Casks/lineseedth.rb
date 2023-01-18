class Lineseedth < Formula
  version "1.0.0"
  sha256 "7752f60050d475a43c8c0a8a63bd3f89ded0ce568227c84c95419182ad548c6a"

  url "https://cdn.katsuragi.cyou/zip/LINESeed-TH/#{version}.zip"
  name "LINE Seed Sans TH"
  desc "a Font that make by line"
  homepage ""

  livecheck do
    url :url
    strategy :github_latest
  end

  font "LINESeedSansTH_Bd.otf"
  font "LINESeedSansTH_Bd.ttf"
  font "LINESeedSansTH_He.otf"
  font "LINESeedSansTH_He.ttf"
  font "LINESeedSansTH_Rg.otf"
  font "LINESeedSansTH_Rg.ttf"
  font "LINESeedSansTH_Th.otf"
  font "LINESeedSansTH_Th.ttf"
  font "LINESeedSansTH_XBd.otf"
  font "LINESeedSansTH_XBd.ttf"
end
