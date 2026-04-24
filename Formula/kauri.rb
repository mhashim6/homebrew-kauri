class Kauri < Formula
  desc "Decision memory for LLM agents and humans"
  homepage "https://github.com/mhashim6/kauri"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mhashim6/kauri/releases/download/v0.1.0/kauri-darwin-arm64"
      sha256 "dc6b4b02029acb50e73c4b4812da6a08fb951a8f303a85021c78cb20035ded0b"
    end
    # on_intel do
    #   url "https://github.com/mhashim6/kauri/releases/download/v0.1.0/kauri-darwin-x64"
    #   sha256 "PLACEHOLDER_DARWIN_X64"
    # end
  end

  on_linux do
    # on_arm do
    #   url "https://github.com/mhashim6/kauri/releases/download/v0.1.0/kauri-linux-arm64"
    #   sha256 "PLACEHOLDER_LINUX_ARM64"
    # end
    on_intel do
      url "https://github.com/mhashim6/kauri/releases/download/v0.1.0/kauri-linux-x64"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kauri"
  end

  def caveats
    <<~EOS
      To add the Claude Code plugin:
        claude plugin install kauri-claude-code
    EOS
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/kauri --version")
  end
end
