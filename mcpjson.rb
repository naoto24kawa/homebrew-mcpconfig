class Mcpjson < Formula
  desc "MCP(Model Context Protocol)設定ファイルを効率的に管理するCLIツール"
  homepage "https://github.com/naoto24kawa/mcpjson"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.2/mcpjson_Darwin_x86_64.tar.gz"
      sha256 "95060f0b11b76c09d6f4917188c2650c97155ba7cd64b18401800c58cdca82fe"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.2/mcpjson_Darwin_arm64.tar.gz"
      sha256 "e857840e21d3c66edb3fbd1706b30b1fc8476047f6be3ffa6c4cc305f290a75a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.2/mcpjson_Linux_x86_64.tar.gz"
      sha256 "bdb28919b5d8ac13b70fb143d8568f06fa8282bc021e2856a3c48856a5f2af1d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.2/mcpjson_Linux_arm64.tar.gz"
      sha256 "cbb2efdb0295e326b142b1060622e1bc4f0cfa3a5853df44f50dca6f15ff9a82"
    end
  end

  def install
    bin.install "mcpjson"
  end

  test do
    system "#{bin}/mcpjson", "--help"
  end
end