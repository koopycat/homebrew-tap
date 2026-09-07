cask "cf-redirect" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "80ac1ff2021ccb678b25bb8f45ffffcf977a7d69b172ea464fd33f3126494099",
         intel: "c4163d29eca18187476c19f6eba73544949959e7ca48e938721b37b42c8c1630"

  url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_#{arch}.tar.gz"
  name "cf-redirect"
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"

  depends_on macos: :big_sur
  quarantine false

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cf-redirect_#{version}_darwin_#{arch}/cf-redirect"
end
