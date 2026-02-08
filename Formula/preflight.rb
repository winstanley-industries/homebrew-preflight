class Preflight < Formula
  desc "Local code review tool for AI-generated changes"
  homepage "https://github.com/winstanley-industries/preflight"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c98e50c917a36cd90da803637cebc75c0fac54a4ac82799f294a8a8a4cdf38c8"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "060686a0cc87a5717fdfb09767710874c354327a502564fa983e9265d4633aed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e4c79eb13f2e147b691391443edef323edad9a5ecd7abae0d25cd107894e6cf"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e63862def9cb1debd24078f916b2055e0f74f63c98b5077c0f92327e3843d89"
    end
  end

  def install
    bin.install "preflight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
  end
end
