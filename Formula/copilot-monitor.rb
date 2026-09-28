class CopilotMonitor < Formula
  desc "Local proxy for LLM API usage monitoring"
  homepage "https://github.com/koopycat/copilot-monitor"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/copilot-monitor/releases/download/v0.2.2/copilot-monitor-darwin-arm64.tar.gz"
      sha256 "2ccd88e6e2d9a7b3d1690b358aa71d62a99aabf1a1d9f6959432053b753251af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/copilot-monitor/releases/download/v0.2.2/copilot-monitor-linux-arm64.tar.gz"
      sha256 "7e981c02aaedc55f5eb64fcca1e5626f1601fba5c0487627f00f9cae2fb9dd06"
    end
    on_intel do
      url "https://github.com/koopycat/copilot-monitor/releases/download/v0.2.2/copilot-monitor-linux-amd64.tar.gz"
      sha256 "93e2339ef980cc005554cca941ddeb721927fbfb6287672d037411e26244db12"
    end
  end

  def install
    bin.install "copilot-monitor"
  end

  test do
    system "#{bin}/copilot-monitor", "version"
  end
end
