# Rendered by deploy-git.sh (cli_tap_bucket) from release.json of every non-pre-release — never edit by hand.
# Homebrew tap: epicprosmart-info/homebrew-tap → Formula/cosec-cli.rb   (brew install epicprosmart-info/tap/cosec-cli)
class CosecCli < Formula
  desc "CoSec Shield CLI: SBOM upload + CI gate, threat cases, audit file verification, MCP bridge"
  homepage "https://github.com/epicprosmart-info/cosec-cli"
  version "1.0.0-rc.2"
  license :cannot_represent # proprietary — https://github.com/epicprosmart-info/cosec-cli/blob/main/LICENSE.md

  on_macos do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.2/cosec-cli_v1.0.0-rc.2_darwin_arm64.tar.gz"
      sha256 "dae46e52ffe710824c9292ce54d843dcaa276a71fdc853ae4ca6cee968f592a2"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.2/cosec-cli_v1.0.0-rc.2_darwin_amd64.tar.gz"
      sha256 "c0340fd4d106fd4e9f666b0ccd1e6cdefcc2f36b56ab3fd9987ecf570e8de8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.2/cosec-cli_v1.0.0-rc.2_linux_arm64.tar.gz"
      sha256 "b23fb2ed0a6bef49d9caa8081d66e90c5084a01f34e88a61652eb5f2db62ba1b"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.2/cosec-cli_v1.0.0-rc.2_linux_amd64.tar.gz"
      sha256 "a0de8c0da8b6d173d81a967564da395074cc7214abb0784b061faecd8913d979"
    end
  end

  def install
    bin.install "cosec-cli"
  end

  test do
    assert_match "cosec-cli v#{version}", shell_output("#{bin}/cosec-cli --version")
  end
end
