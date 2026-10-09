class HevyAxi < Formula
  desc "Agent-ergonomic CLI for the Hevy Public API"
  homepage "https://github.com/koopycat/hevy-connect"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.1.0/hevy-axi_0.1.0_darwin_arm64.tar.gz"
      sha256 "731f0af29ad2e785a51a9a403841343d858e8b2faf5a9ce6ed921f533fe77376"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.1.0/hevy-axi_0.1.0_darwin_amd64.tar.gz"
      sha256 "91c420fe8f3e15a13f811c048563a217eb541ef49635a864350be3c45dffe1dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.1.0/hevy-axi_0.1.0_linux_arm64.tar.gz"
      sha256 "f1377c8ecb471919a368c6b9d1e0826e4c8bfb4f74ae84e15f28769b335129e8"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.1.0/hevy-axi_0.1.0_linux_amd64.tar.gz"
      sha256 "7f29e8da3ab46cef292070f321f64f29e82e6e7a7580f249d36c727f1f2c08ea"
    end
  end

  def install
    bin.install "hevy-axi"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/hevy-axi --version").strip
  end
end
