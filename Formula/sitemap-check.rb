class SitemapCheck < Formula
  desc "Check every URL contained in an XML sitemap"
  homepage "https://github.com/koopycat/sitemap_check"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_arm64.tar.gz"
      sha256 "2f23473592d87a310f523ae1ed9bc1f049b6f716d46e6c1c0f50a8800d7814df"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_darwin_amd64.tar.gz"
      sha256 "0d6a321b15b91fe36faae77533162b280d234cfcaa43c01f64acd33f78132776"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_arm64.tar.gz"
      sha256 "dc55ac2fc87ef640e3ffc28b292a9abc8c684a6ee2eba0d2fbd9c6adb250b98f"
    end

    on_intel do
      url "https://github.com/koopycat/sitemap_check/releases/download/v#{version}/sitemap_check_#{version}_linux_amd64.tar.gz"
      sha256 "b96080ecace00b58d10994be9e8588f44651b71f01e0989cc3478b98473b875f"
    end
  end

  def install
    bin.install "sitemap_check"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/sitemap_check --version").strip
  end
end
