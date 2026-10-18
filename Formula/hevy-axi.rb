class HevyAxi < Formula
  desc "Agent-ergonomic CLI for the Hevy Public API"
  homepage "https://github.com/koopycat/hevy-connect"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.3.0/hevy-axi_0.3.0_darwin_arm64.tar.gz"
      sha256 "16425bd630f13aadad2a1b6f0dfd9f6f7656372293575bb3e8e3faa5da759a9d"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.3.0/hevy-axi_0.3.0_darwin_amd64.tar.gz"
      sha256 "6319ed21751d83b98fa28f9cdfb839d72573ba3d3b067b0c19e886d7fe3795eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.3.0/hevy-axi_0.3.0_linux_arm64.tar.gz"
      sha256 "2d0c4e7c5836916a5e40c108add1104e7e45c411d9098c9e46035023fd8e77c8"
    end

    on_intel do
      url "https://github.com/koopycat/hevy-connect/releases/download/v0.3.0/hevy-axi_0.3.0_linux_amd64.tar.gz"
      sha256 "6a4b932a1550040dea4ccaf88af60a192aea03b170623b54422c92189fe910df"
    end
  end

  def install
    bin.install "hevy-axi"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/hevy-axi --version").strip
  end
end
