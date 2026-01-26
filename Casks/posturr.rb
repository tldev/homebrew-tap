cask "posturr" do
  version "1.3.0"
  sha256 "b4cf190b3b01222e634ad373f5e64e6c0c4659d8d56c73b3019ff79d835f9c02"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.zip"
  name "Posturr"
  desc "Posture monitoring app that blurs your screen when you slouch"
  homepage "https://github.com/tldev/posturr"

  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: [
    "~/Library/Preferences/com.thelazydeveloper.posturr.plist",
  ]
end
