class Ramble < Formula
  desc "CLI for deploying Nomad packs and jobs"
  homepage "https://ramble.openwander.org"
  version "0.5.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/open-wander/ramble/releases/download/v0.5.3/ramble_Darwin_arm64.tar.gz"
      sha256 "13d4bdfb20b3d3910e62df0c9c0d93435e8ccf46fbf1721b1168ace94091f5b9"
    end
    on_intel do
      url "https://github.com/open-wander/ramble/releases/download/v0.5.3/ramble_Darwin_x86_64.tar.gz"
      sha256 "091bd0f2e1123b5209a8776b8e9fe1030761b737170f7c6d97ffee54b3beddb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-wander/ramble/releases/download/v0.5.3/ramble_Linux_arm64.tar.gz"
      sha256 "1544779fba6561d63c61b381925945bcca8a075b87dacadf89bd8519d042529c"
    end
    on_intel do
      url "https://github.com/open-wander/ramble/releases/download/v0.5.3/ramble_Linux_x86_64.tar.gz"
      sha256 "8cacd9d9ff2d93e5044812e9ba42ddfa7afbf28c399a6a064300493af3996306"
    end
  end

  def install
    bin.install "ramble"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ramble --version")
  end
end
