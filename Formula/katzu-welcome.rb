class KatzuWelcome < Formula
  desc "Personalized terminal welcome banner with weather, ASCII art, and quotes"
  homepage "https://github.com/katzEco/katzu-welcome"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/katzEco/katzu-welcome/releases/download/v#{version}/katzu-welcome-darwin-arm64"
      sha256 "47ea146a019984f24f149dab7ca6ae8b4a4697edc445574a2dcf27ad55b0dc99"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-welcome/releases/download/v#{version}/katzu-welcome-darwin-x64"
      sha256 "75478aa9df965dafc8efcd1cb39149a0c9c63c9488d84733a8ff63372bfc1957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/katzEco/katzu-welcome/releases/download/v#{version}/katzu-welcome-linux-arm64"
      sha256 "d5a5775b6b30291a7d91d49bb015e03036b501f4fa9607982f512a84ebfcab46"
    end
    on_intel do
      url "https://github.com/katzEco/katzu-welcome/releases/download/v#{version}/katzu-welcome-linux-x64"
      sha256 "290398e6e68b18111f97ec8c6c9dd5b8fcc6e38e4bd1c5abf9b0b31bced0684b"
    end
  end

  def install
    binary = Dir["katzu-welcome-*"].first
    bin.install binary => "katzu-welcome"
  end

  test do
    assert_match "katzu-welcome", shell_output("#{bin}/katzu-welcome --help")
  end
end