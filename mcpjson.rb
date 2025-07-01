class Mcpjson < Formula
  desc "MCP(Model Context Protocol)設定ファイルを効率的に管理するCLIツール"
  homepage "https://github.com/naoto24kawa/mcpjson"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Darwin_x86_64.tar.gz"
      sha256 "8d68ea681f2d63f778bae6d33cec5beb78a8d638041ff5e420a2fbd42984c7e5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Darwin_arm64.tar.gz"
      sha256 "c3436ee656224bd4590648600dc786127536d708db4dcca089a3552be760c811"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Linux_x86_64.tar.gz"
      sha256 "dc8c368bcd7a8b4a5d21a878bafd6bb87cfabae32721bd3159a03591f2ed58b9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/naoto24kawa/mcpjson/releases/download/v0.2.3/mcpjson_Linux_arm64.tar.gz"
      sha256 "3bba78e96d13169c3005bf18adf69c8efacd090396332af3c3cb4861be79e7d7"
    end
  end

  def install
    bin.install "mcpjson"
  end

  test do
    system "#{bin}/mcpjson", "--help"
  end
end