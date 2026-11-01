# Rendered by deploy-git.sh (cli_tap_bucket) from release.json of every non-pre-release — never edit by hand.
# Homebrew tap: epicprosmart-info/homebrew-tap → Formula/cosec-cli.rb   (brew install epicprosmart-info/tap/cosec-cli)
class CosecCli < Formula
  desc "CoSec Shield CLI: SBOM upload + CI gate, threat cases, audit file verification, MCP bridge"
  homepage "https://github.com/epicprosmart-info/cosec-cli"
  version "1.0.0-rc.4"
  license :cannot_represent # proprietary — https://github.com/epicprosmart-info/cosec-cli/blob/main/LICENSE.md

  on_macos do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.4/cosec-cli_v1.0.0-rc.4_darwin_arm64.tar.gz"
      sha256 "6d73b015c88b585f2108c5db24cb4e672d7c2cd5da0db89ddfffc890889b439e"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.4/cosec-cli_v1.0.0-rc.4_darwin_amd64.tar.gz"
      sha256 "b14a3ca5ec32ad07c020348fc9b527581d90425d1dd33a0f0d15d277c9b90ba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.4/cosec-cli_v1.0.0-rc.4_linux_arm64.tar.gz"
      sha256 "c3575149cd9f66c09eddc4b7549de207911821fa48a23798ea03fd24d7adfbee"
    end
    on_intel do
      url "https://github.com/epicprosmart-info/cosec-cli/releases/download/v1.0.0-rc.4/cosec-cli_v1.0.0-rc.4_linux_amd64.tar.gz"
      sha256 "51880a2e88ef02a6a11320bc829f76519caa83498289fb4de65c95e523c13c17"
    end
  end

  def install
    bin.install "cosec-cli"
  end

  test do
    assert_match "cosec-cli v#{version}", shell_output("#{bin}/cosec-cli --version")
  end
end
