class SitemapCheck < Formula
  desc "Check every URL contained in an XML sitemap"
  homepage "https://github.com/koopycat/sitemap_check"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_arm64.tar.gz"
      sha256 "df8a7b13ca1a6f93cadae3caa31d89e5c14506dcfcc43f0bc2020a8635896b82"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_amd64.tar.gz"
      sha256 "87ba2ce8ebfde126d2863cd639c2361c274cf6a6cf6beba7db66dec96fb645e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_arm64.tar.gz"
      sha256 "b78eb1cc2fe5d69c46b4db27cac78cef01657cee3b084ae383faec5fb04cdf81"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_amd64.tar.gz"
      sha256 "42f1e3db19d179a06024bd4b819e654738954b5408dea0071ca08ccf4138691d"
    end
  end

  def install
    bin.install "sitemap_check"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sitemap_check --version").strip
  end
end
