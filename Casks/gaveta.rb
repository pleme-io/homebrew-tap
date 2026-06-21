cask "gaveta" do
  version "0.1.0"
  sha256 "acd413d31d94e99c3dc62f4d0e58372ab5eaa6d1601cb2364b52f80a4e3180b9"

  url "https://github.com/pleme-io/gaveta-client/releases/download/v#{version}/Gaveta-#{version}-arm64.dmg",
      verified: "github.com/pleme-io/gaveta-client/"
  name "gaveta"
  desc "Self-hosted private cloud drive for families"
  homepage "https://drive.quero.cloud/"

  depends_on arch: :arm64

  app "Gaveta.app"

  zap trash: [
    "~/Library/Application Support/io.pleme.gaveta",
    "~/Library/Preferences/io.pleme.gaveta.plist",
  ]
end
