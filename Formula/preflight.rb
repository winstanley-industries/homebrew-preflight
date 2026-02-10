class Preflight < Formula
  desc "Local code review tool for AI-generated changes"
  homepage "https://github.com/winstanley-industries/preflight"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5fb58e8761cf65baaf54bf98c99ddcbf1cf2e0e3e88a3c784832e5a22d6e722d"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "95ed93ac98fb91235423afa8ba9f168f88bab87ed69d95cb6d19c5a284ecedd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68140f8164635d1b376bf922df8010b2e68d5896698a14a514a8f30ea14e9ddd"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21bc1bfa3b61dc4421b720daa2c7d347ba36d5c5556550dbc1e20fcae463c736"
    end
  end

  def install
    bin.install "preflight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
  end
end
