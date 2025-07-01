class Mcpjson < Formula
  desc "MCP(Model Context Protocol)設定ファイルを効率的に管理するCLIツール"
  homepage "https://github.com/naoto24kawa/mcpjson"
  license "MIT"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.5/mcpjson_Darwin_x86_64.tar.gz"
      sha256 "20b84387ea2c1a1d261fd90873f7f9c4ef69675aab8eee533cf673bf8700c95b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.5/mcpjson_Darwin_arm64.tar.gz"
      sha256 "872dbaadec5211827076191011722de9ad0b8073758446ff7495d16a77787531"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.5/mcpjson_Linux_x86_64.tar.gz"
      sha256 "374672b8189875bae6352c74bc73c794e415ee5a7dfcbc641803be1d31b0b989"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.5/mcpjson_Linux_arm64.tar.gz"
      sha256 "20d78f27922cf314c9b6f91c31210d9d3865c7f4833da05d0463439d76cd4258"
    end
  end

  def install
    bin.install "mcpjson"
  end

  test do
    system "#{bin}/mcpjson", "--help"
  end
end