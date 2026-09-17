class SitemapCheck < Formula
  desc "Check every URL contained in an XML sitemap"
  homepage "https://github.com/koopycat/sitemap_check"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_arm64.tar.gz"
      sha256 "73fd5aff1025b2cdb924d6e619d5875e66d7201614e119e709cf90e829bf8ce8"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_amd64.tar.gz"
      sha256 "ac665de15069239e19614c15ef299c3836e1e9d0c31c7be59bf777d0ac66abed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_arm64.tar.gz"
      sha256 "5886075518ba568ba420075784f653b65d81714657924ac6c4e0f3066e0f6324"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_amd64.tar.gz"
      sha256 "1a896e6e11e67bcbd7d3c69b5d171a6809f0b1f9092aff03d16c90c4cb70b1aa"
    end
  end

  def install
    bin.install "sitemap_check"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sitemap_check --version").strip
  end
end
