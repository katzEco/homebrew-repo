cask "katzu-welcome" do
  version "1.0.0"
  sha256 "76ec70e492bbfcc90dd050c269672977afd3e0fcfed7335d8645f4643f435ae1"

  url "https://github.com/katzEco/katzu-welcome/releases/download/v.#{version}/mac-os.tar.gz"
  name "katzu-welcome"
  desc "just some of zsh welcome :)"
  homepage "https://github.com/katzEco/katzu-welcome"

  app "katzu-welcome-macos-arm64"
end