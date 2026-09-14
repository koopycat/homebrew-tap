class CfRedirect < Formula
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_arm64.tar.gz"
      sha256 "79552a2f0d79fd5e8c44fa61e861d2621496a2e6574d33a557186c64a6f235c9"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_amd64.tar.gz"
      sha256 "039e9ba59beb6838d924b185bd2d34a99958b37d02be15a29fc0a7062f21969f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_arm64.tar.gz"
      sha256 "db7c25eef765337d64aeaaf6adec71f22e0d46566b0f364bc32e3bf3a3d6f218"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_amd64.tar.gz"
      sha256 "181c1f1a573c544d692e80f05e3547231455baf816303c6d7e474162158cd151"
    end
  end

  def install
    bin.install "cf-redirect"
  end

  test do
    assert_match "Safely manage a Cloudflare Bulk Redirect List", shell_output("#{bin}/cf-redirect --help")
  end
end
