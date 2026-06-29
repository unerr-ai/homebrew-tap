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
  version  "0.4.2"

  # CI auto-bumps: version string above + url/sha256 in each on_* block below.

  on_macos do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-arm64.tar.gz"
      sha256 "d01c52146b21f7135b1090090a1682373b0580e4094ac090e79dc4e75f5944c7"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-darwin-x64.tar.gz"
      sha256 "d3796d58e80b4784f16a4f3e236ef539228144f02fbe56ec49e6605a591ced43"
    end
  end

  on_linux do
    on_arm do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-arm64.tar.gz"
      sha256 "ce3b0816ffdf62c8e8fc822c394cc781efb829627594c5bc08611e406e7b8efb"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr/releases/download/v#{version}/unerr-linux-x64.tar.gz"
      sha256 "280d51b36a02af87a8944a55aae96c50450499aab5f08a36696e96cf0fad9e7e"
    end
  end

  def install
    bin.install "unerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unerr --version")
  end
end
