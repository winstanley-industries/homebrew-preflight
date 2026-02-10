class Preflight < Formula
  desc "Local code review tool for AI-generated changes"
  homepage "https://github.com/winstanley-industries/preflight"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fee7b53d2a946e771f41b90d17a7ee44a73321df2f075c14908b3c2395b62bb7"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7b45110fcda1b31779e910154225f923d0247317e49a7a4b413c71d36ec20332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f061aa931db91523369e97c4d25760e9646fcb09c1e79371119b950ff05f271f"
    end

    on_intel do
      url "https://github.com/winstanley-industries/preflight/releases/download/v#{version}/preflight-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d144582bcdf9f2f2f2d5210527788ed15903bd64d72f14de8cb750aa30e45908"
    end
  end

  def install
    bin.install "preflight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
  end
end
