class KatzuGit < Formula
  desc "Minimal, ergonomic CLI wrapper for everyday Git workflows"
  homepage "https://github.com/katzEco/katzu-git"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-mac-arm"
      sha256 "47ac8ef0b7b3c24300399649880d4724f45e6ff2a979d4384c8df4fbd381a219"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-mac-x64"
      sha256 "c5d625c977ca23829c9358282d5b4dc76a9e793411706fd4e0317af026c5b3f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-linux-arm"
      sha256 "06d33bfa5f6f245d46876a08c1af1cc596f9d542f041548e37470ed869f02142"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-git/releases/download/v#{version}/kg-v#{version}-linux-x64"
      sha256 "85a7674ce17a2b6f040c476db6a981096be3471313299a345e0a973adfca7bc7"
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
