class CfRedirect < Formula
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_arm64.tar.gz"
      sha256 "9f92410599c15c1dbdd3b58ae024ea9014ac0f4f01bad358abe80f1e8e7aed1e"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_amd64.tar.gz"
      sha256 "904437f9fb816246ae7f27a667f81c212d6adc338312920db9193f86277f1b37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_arm64.tar.gz"
      sha256 "11e51bd014034f2892b28a520817d8c36a23963fb5cd2780352edd1efbfeb201"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_amd64.tar.gz"
      sha256 "74f738f2019be96667cf7bf8e57efddf51ba4a5be401e75f626ba77592f9829f"
    end
  end

  def install
    bin.install "cf-redirect"
  end

  test do
    assert_match "Safely manage a Cloudflare Bulk Redirect List", shell_output("#{bin}/cf-redirect --help")
  end
end
