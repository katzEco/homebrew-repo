class OverlayManager < Formula
  desc "Dedicated CLI tool for managing stream overlays"
  homepage "https://github.com/dethz-live-tools/overlay-manager"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dethz-live-tools/overlay-manager/releases/download/v#{version}/overlay-manager-darwin-arm64"
      sha256 "883097c304e3b00c401ef7b2c3d5f4092d65251c7e004abba21b8ca8d5d95b86"
    end
    on_intel do
      url "https://github.com/dethz-live-tools/overlay-manager/releases/download/v#{version}/overlay-manager-darwin-x64"
      sha256 "3c416cb80f53ca6a72c888e705e51ec2b7d6bd620941f7ae7c1f6070d6106a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dethz-live-tools/overlay-manager/releases/download/v#{version}/overlay-manager-linux-arm64"
      sha256 "4792737518c5ab47ff753c5dc96b35c5198e4561e29b2e1d7b4e92f95669daea"
    end
    on_intel do
      url "https://github.com/dethz-live-tools/overlay-manager/releases/download/v#{version}/overlay-manager-linux-x64"
      sha256 "2c7e28d244131403dc1e39f42e89d15ae08d5ec617d3ca09503b98e76ceaa3de"
    end
  end

  def install
    binary = Dir["overlay-manager-*"].first
    bin.install binary => "overlay-manager"
  end

  test do
    assert_match "overlay-manager", shell_output("#{bin}/overlay-manager --help")
  end
end
