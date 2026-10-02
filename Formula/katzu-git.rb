class KatzuGit < Formula
  desc "Minimal, ergonomic CLI wrapper for everyday Git workflows"
  homepage "https://github.com/katzEco/katzu-git"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-mac-arm"
      sha256 "950f8e75da1ab7fa409c5e4c94fd3dea9ef64ab2017fb9a9470b05e63874f3a6"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-mac-x64"
      sha256 "f104d5148e60f48f0713f3edfc8b5add282b6a030b52d5b971d837b5e52a88c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-linux-arm"
      sha256 "c07749d3967a6ec4995c7465bad19a25fadcefa093879560ad05d62cf431f9b2"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-linux-x64"
      sha256 "3f46f41e42232d4067488e012f1192998ba06c8fb5efb2bb2546d2d75d5bb80f"
    end
  end

  def install
    binary = Dir["kg-*"].first
    bin.install binary => "kg"
    bin.install_symlink bin/"kg" => "katzu-git"
  end

  test do
    assert_match "kg", shell_output("#{bin}/kg --help")
  end
end
