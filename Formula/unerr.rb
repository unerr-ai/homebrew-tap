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
  version  "0.5.0"

  # CI auto-bumps: version string above + url/sha256 in each on_* block below.

  on_macos do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-arm64.tar.gz"
      sha256 "912b5993fd158933c7a41d3878b664cde2c6220be359f07caad86ba65a9a5abe"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-x64.tar.gz"
      sha256 "a7d41b3c37198ab419a590aab0cfe3d1785eec551b3b8a80d28504fac702389d"
    end
  end

  on_linux do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-arm64.tar.gz"
      sha256 "aef640a416065d3fa6e390aa3424bbd07a880962091ce29725741604da9fe9dc"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-x64.tar.gz"
      sha256 "e2640c76c891f3fe6b6a51174e9dd69b8641ee85db470fc8aa17b4e7d033b7ac"
    end
  end

  def install
    bin.install "unerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unerr --version")
  end
end
