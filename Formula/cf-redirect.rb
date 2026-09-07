class CfRedirect < Formula
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_arm64.tar.gz"
      sha256 "3467121fe936b10e1301da1d17b16ade5eb97077fdd5673d912a88b32408df3d"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_amd64.tar.gz"
      sha256 "3c6597a4d803a1e802bd71587893c6d4222a693f24720af5c4117f27e4f7aed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_arm64.tar.gz"
      sha256 "fb5a09f3563001acdd71fc3856363128da5c995c2973ae764b1700017b489dc0"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_amd64.tar.gz"
      sha256 "1a4be29001833da110e9852666d9333f7dd0d0385984d1265a7b7496b303557c"
    end
  end

  def install
    bin.install "cf-redirect"
  end

  test do
    assert_match "Safely manage a Cloudflare Bulk Redirect List", shell_output("#{bin}/cf-redirect --help")
  end
end
