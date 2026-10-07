class SitemapCheck < Formula
  desc "Check every URL contained in an XML sitemap"
  homepage "https://github.com/koopycat/sitemap_check"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_arm64.tar.gz"
      sha256 "41a8e22f46eb2e9c9c782ad1d5f27a3c3b39e68a2025f160e2da1ba14dc0e65d"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_amd64.tar.gz"
      sha256 "add3324988eee257fd34becb89e17c55c94dfad67717e3cf760f89950a3bce30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_arm64.tar.gz"
      sha256 "6103a98cf4d2bff61e5edd9f06b5fa316976577eca180979075b473d6f64d3be"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_amd64.tar.gz"
      sha256 "cb84ae0de09357c8cec1fd376175b66e96b7f7ed8e031f6a59771b1718d630e1"
    end
  end

  def install
    bin.install "sitemap_check"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sitemap_check --version").strip
  end
end
