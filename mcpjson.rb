class Mcpjson < Formula
  desc "MCP(Model Context Protocol)設定ファイルを効率的に管理するCLIツール"
  homepage "https://github.com/naoto24kawa/mcpjson"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Darwin_x86_64.tar.gz"
      # sha256 will be calculated automatically
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Darwin_arm64.tar.gz"
      # sha256 will be calculated automatically
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Linux_x86_64.tar.gz"
      # sha256 will be calculated automatically
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Linux_arm64.tar.gz"
      # sha256 will be calculated automatically
    end
  end

  def install
    bin.install "mcpjson"
  end

  test do
    system "#{bin}/mcpjson", "--help"
  end
end