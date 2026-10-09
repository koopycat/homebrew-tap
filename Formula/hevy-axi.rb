class HevyAxi < Formula
  desc "Agent-ergonomic CLI for the Hevy Public API"
  homepage "https://github.com/koopycat/hevy-connect"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.2.0/hevy-axi_0.2.0_darwin_arm64.tar.gz"
      sha256 "4f3c1fa712717cc7d46265ccac1166700b6a225336069595df62b26b982692e2"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.2.0/hevy-axi_0.2.0_darwin_amd64.tar.gz"
      sha256 "0f5534498bbd8a95343325f9d4521ba34b42b4228725e9d751aced409d31c9ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.2.0/hevy-axi_0.2.0_linux_arm64.tar.gz"
      sha256 "020a64d8db57070ac58ff9d3019c66308d75625b283f8b5097322e8e5c3a0789"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.2.0/hevy-axi_0.2.0_linux_amd64.tar.gz"
      sha256 "5be33d9d33a492c9b66881b085ee6bc7f1df0eb6367e563a00225daa7095b2cd"
    end
  end

  def install
    bin.install "hevy-axi"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/hevy-axi --version").strip
  end
end
