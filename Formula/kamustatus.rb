class Kamustatus < Formula
  desc "Multi-region uptime monitoring CLI"
  homepage "https://kamustatus.com"
  version "0.1.0"

  CDN = "https://kamustatus-releases.fly.storage.tigris.dev/cli/v#{version}"

  on_macos do
    on_arm do
      url "#{CDN}/kamustatus-darwin-arm64"
      sha256 "dc47875675c04abac15730185e6ec30dcc15868d1bba5e3219974e3a847303a7"

      def install
        bin.install "kamustatus-darwin-arm64" => "kamustatus"
      end
    end

    on_intel do
      url "#{CDN}/kamustatus-darwin-amd64"
      sha256 "22b708df04c865065d2bd085f50ef8ae5ed19192534c894c688c5e8da9487332"

      def install
        bin.install "kamustatus-darwin-amd64" => "kamustatus"
      end
    end
  end

  on_linux do
    on_arm do
      url "#{CDN}/kamustatus-linux-arm64"
      sha256 "dafdbd70e0ff7e458269d9dbd86efa71a8bfe3880d32d05e04d1deb93aed782d"

      def install
        bin.install "kamustatus-linux-arm64" => "kamustatus"
      end
    end

    on_intel do
      url "#{CDN}/kamustatus-linux-amd64"
      sha256 "b08ed219312a46dbb2214e760f88288144d1aff9dd3573b2b72534523aa6f9b8"

      def install
        bin.install "kamustatus-linux-amd64" => "kamustatus"
      end
    end
  end

  test do
    assert_match "kamustatus", shell_output("#{bin}/kamustatus --help")
  end
end
