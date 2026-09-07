# koopycat Homebrew tap

Homebrew formulas for koopycat command-line projects. The formulas support macOS and Linux on Apple Silicon/ARM64 and Intel/AMD64.

## Available projects

| Project | Description | Source |
| --- | --- | --- |
| `cf-redirect` | Safely manage a Cloudflare Bulk Redirect List | [`koopycat/cf_redirect_manager`](https://github.com/koopycat/cf_redirect_manager) |
| `sitemap-check` | Check every URL contained in an XML sitemap | [`koopycat/sitemap_check`](https://github.com/koopycat/sitemap_check) |

## Install

Install a formula directly from this tap:

```sh
brew install koopycat/tap/cf-redirect
brew install koopycat/tap/sitemap-check
```

Alternatively, add the tap first and then install formulas by name:

```sh
brew tap koopycat/tap
brew install cf-redirect
brew install sitemap-check
```

Upgrade installed formulas with:

```sh
brew upgrade cf-redirect sitemap-check
```
