class Preflight < Formula
  desc "Local code review tool for AI-generated changes"
  homepage "https://github.com/winstanley-industries/preflight"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a6afe1811c7b1aeb6c2431a720cafb2fdb1bcc8156213ff777bbc2047aa37fd2"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ec5dc0988ffe502b80b68200797adaf2fc716fcae8bd7bfa8e87fb7cd570be5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e4910c2baedc0cd16958cca0c5a56a4dc17e2240ab79821d0801450601aa3f1"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a38988fd51c73f93af0cb5c21ab95932c82ee375956d85e77d2b07761e1710d5"
    end
  end

  def install
    bin.install "preflight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
  end
end
