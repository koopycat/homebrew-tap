class CfRedirect < Formula
  desc "Safely manage a Cloudflare Bulk Redirect List"
  homepage "https://github.com/koopycat/cf_redirect_manager"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_arm64.tar.gz"
      sha256 "c4dcdfa9e2261c564b57df8063a2d262d0b15605ab6d0fe534d69321b86c9604"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_darwin_amd64.tar.gz"
      sha256 "a3969d62ceebb38c952024cb382b4b8cbc45efed088950b1d19ef9d974f89b43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_arm64.tar.gz"
      sha256 "45bb1baf5d7eb0af23fe85a8eaac97bcfbafd7e614feff321ab7e1c61c6b61bd"
    end

    on_intel do
      url "https://github.com/koopycat/cf_redirect_manager/releases/download/v#{version}/cf-redirect_#{version}_linux_amd64.tar.gz"
      sha256 "aad0910e7f3c8fab22ead5743cec66e236501c57e67b6090db9f4e2b4f1eb87f"
    end
  end

  def install
    bin.install "cf-redirect"
  end

  test do
    assert_match "Safely manage a Cloudflare Bulk Redirect List", shell_output("#{bin}/cf-redirect --help")
  end
end
