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
  version  "0.4.0"

  # CI auto-bumps: version string above + url/sha256 in each on_* block below.

  on_macos do
    on_arm do
      url    "https://github.com/unerr-ai/unerr-docs/releases/download/v#{version}/unerr-darwin-arm64.tar.gz"
      sha256 "3d0df3336fdb15e2b413b159a7aafcb661c6828607bd376f471258028f318f85"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr-docs/releases/download/v#{version}/unerr-darwin-x64.tar.gz"
      sha256 "19399e587dc5a9b4a5d9bd6c77b18b59c2a72e73f416ec5a9e0544fb96a26e3f"
    end
  end

  on_linux do
    on_arm do
      url    "https://github.com/unerr-ai/unerr-docs/releases/download/v#{version}/unerr-linux-arm64.tar.gz"
      sha256 "cf2acbe70090f24109c80a45d29a6d0485d4f15b18cfe57c47bd996f53d2a203"
    end

    on_intel do
      url    "https://github.com/unerr-ai/unerr-docs/releases/download/v#{version}/unerr-linux-x64.tar.gz"
      sha256 "cd63551328b5a57539fa999271e11467b939762d47fa042f5a75c2148c678d6e"
    end
  end

  def install
    bin.install "unerr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unerr --version")
  end
end
