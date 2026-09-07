cask "cf-redirect" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "3467121fe936b10e1301da1d17b16ade5eb97077fdd5673d912a88b32408df3d",
         intel: "3c6597a4d803a1e802bd71587893c6d4222a693f24720af5c4117f27e4f7aed4"

  url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_#{arch}.tar.gz"
  name "cf-redirect"
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"

  depends_on macos: :big_sur

  postflight_steps do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", staged_path],
                   sudo: false
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cf-redirect_#{version}_darwin_#{arch}/cf-redirect"
end
