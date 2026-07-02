# unerr Homebrew formula — tap: unerr-ai/homebrew-tap
# Install: brew install unerr-ai/tap/unerr
#
# RELEASE CI INSTRUCTIONS:
#   This file is auto-bumped by the release workflow in unerr-ai/homebrew-tap.
#   Do not hand-edit the `version`, `url`, or `sha256` fields — CI rewrites them.
#   Fields marked PLACEHOLDER_SHA256 are replaced with real sums at release time.

class Unerr < Formula
  desc     "Runtime guardrail that hands your coding agent the live call graph and anchored rules"
  homepage "https://unerr.dev"
  version  "0.4.3"

  # CI auto-bumps: version string above + url/sha256 in each on_* block below.

  on_macos do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-arm64.tar.gz"
      sha256 "6d8e6b9dca7af25da8f6ba01af20c84c88ef3dd1fefe36f5503b97c9160b25b8"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-x64.tar.gz"
      sha256 "f804aa00da489f57bfff6bb52b2f1d785c2b48ccba9f3438eb2cb56cf44446e6"
    end
  end

  on_linux do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-arm64.tar.gz"
      sha256 "b0a1ef93dcc0e4d418c9dfdd739cc39d4e1125b7206f5795aa261e9363d0c7be"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-x64.tar.gz"
      sha256 "aa69c85598ceeeee2e98735cd34c64702feb30f2b04113b5dcef943f6526bde7"
    end
  end

  def install
    bin.install "unerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unerr --version")
  end
end
