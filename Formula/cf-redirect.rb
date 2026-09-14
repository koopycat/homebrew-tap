class CfRedirect < Formula
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_arm64.tar.gz"
      sha256 "4818646f2dec901e2d8ae9e0fe94c0dd550f5bc1f76c1ee3288465101a0abddd"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_amd64.tar.gz"
      sha256 "bf0d78b7d20445ac59ca2a0cb6673eb829a21304276d4577593f663fb8093648"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_arm64.tar.gz"
      sha256 "803f7dcfb7ce356089a28e982db30d487d5347298ff003a462f8822cc5827e5e"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_amd64.tar.gz"
      sha256 "d774458153fe0fabb0e7d73dd9c307c09cc35f2729eb971f73f685ffffe13975"
    end
  end

  def install
    bin.install "cf-redirect"
  end

  test do
    assert_match "Safely manage a Cloudflare Bulk Redirect List", shell_output("#{bin}/cf-redirect --help")
  end
end
