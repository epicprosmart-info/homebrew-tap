# Rendered by deploy-git.sh (cli_tap_bucket) from release.json of every non-pre-release — never edit by hand.
# Homebrew tap: epicprosmart-info/homebrew-tap → Formula/cosec-cli.rb   (brew install epicprosmart-info/tap/cosec-cli)
class CosecCli < Formula
  desc "CoSec Shield CLI: SBOM upload + CI gate, threat cases, audit file verification, MCP bridge"
  homepage "https://github.com/epicprosmart-info/cosec-cli"
  version "1.0.0-rc.3"
  license :cannot_represent # proprietary — https://github.com/epicprosmart-info/cosec-cli/blob/main/LICENSE.md

  on_macos do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.3/cosec-cli_v1.0.0-rc.3_darwin_arm64.tar.gz"
      sha256 "6a18beab135b2a3f341bec0cc71af2e626ec7f16b231c4eafca6bd1c2cf1ba3a"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.3/cosec-cli_v1.0.0-rc.3_darwin_amd64.tar.gz"
      sha256 "acb66cd45d4583a0c2568502b682a2ba17db7fe957cdafc443e70221b0513144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.3/cosec-cli_v1.0.0-rc.3_linux_arm64.tar.gz"
      sha256 "e0b62053993bf41a8c96e9f5574098672adf12c3ef399a7cbe92f96095fb28fe"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.3/cosec-cli_v1.0.0-rc.3_linux_amd64.tar.gz"
      sha256 "65a7535a7a3ae7a7420d8559f23ba62f8099b7ecec84a29de67630667b5037a5"
    end
  end

  def install
    bin.install "cosec-cli"
  end

  test do
    assert_match "cosec-cli v#{version}", shell_output("#{bin}/cosec-cli --version")
  end
end
