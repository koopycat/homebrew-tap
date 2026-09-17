class SitemapCheck < Formula
  desc "Check every URL contained in an XML sitemap"
  homepage "https://github.com/koopycat/sitemap_check"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_arm64.tar.gz"
      sha256 "54ea1adbce4cfb5fca10dee0ef7ab2d0a58952be113ab4c7d219dac572054408"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_amd64.tar.gz"
      sha256 "4536d1b1b38e4e9b61a96f5887d753b20c308a67a665d9aa789c2c4f61d4522f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_arm64.tar.gz"
      sha256 "7099b9d8424fd389399b281c67a7b073cb01dc12fc09537360409df77669d4f3"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_amd64.tar.gz"
      sha256 "198b82992cdd2449801e07a66df4320f868fba461919dd14994c3dd979e24faf"
    end
  end

  def install
    bin.install "sitemap_check"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sitemap_check --version").strip
  end
end
