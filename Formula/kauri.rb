class Kauri < Formula
  desc "Decision memory for LLM agents and humans"
  homepage "https://github.com/mhashim6/kauri"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhashim6/kauri/releases/download/v0.1.2/kauri-darwin-arm64"
      sha256 "7844a74652539c3d0a377fc48880c6cf73bfbbc13804ea0095f347a6cca38429"
    end
    on_intel do
      url "https://github.com/mhashim6/kauri/releases/download/v0.1.2/kauri-darwin-x64"
      sha256 "b76cc044fb05bd45349e9115c852a768ab4a61dccfa4869df7dd1b974b91dd8c"
    end
  end

  on_linux do
    # on_arm do
    #   url "https://github.com/mhashim6/kauri/releases/download/v0.1.2/kauri-linux-arm64"
    #   sha256 "PLACEHOLDER_LINUX_ARM64"
    # end
    on_intel do
      url "https://github.com/mhashim6/kauri/releases/download/v0.1.2/kauri-linux-x64"
      sha256 "01edb4fc98c5273749aacfdfa5a7d63283c42591ab91f3108c9a0491e23e6d75"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kauri"
  end

  def caveats
    <<~EOS
      To add the Claude Code plugin:
        /plugin marketplace add mhashim6/kauri
        /plugin install kauri@kauri
    EOS
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/kauri --version")
  end
end
