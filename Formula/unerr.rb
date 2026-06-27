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
  version  "0.4.1"

  # CI auto-bumps: version string above + url/sha256 in each on_* block below.

  on_macos do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-arm64.tar.gz"
      sha256 "4b0bbe997b42ec5342d6e71cf949dc5800fd20b1c42b9f7da113506208e5a58a"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-x64.tar.gz"
      sha256 "8b9294e4efb7981b4dd8b13df16f57a2cfcb5e82054d2b3a2a39d0fd86e4b471"
    end
  end

  on_linux do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-arm64.tar.gz"
      sha256 "332f6ae7fcda1ea8b39e5fff30531a25a8a3c2e4e7567120ad832c313662f689"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-x64.tar.gz"
      sha256 "ddead5e072ee2c8e1559b4c6d319832f132d4822566826f0b184ac87eb5a046b"
    end
  end

  def install
    bin.install "unerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unerr --version")
  end
end
