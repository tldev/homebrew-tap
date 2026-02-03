cask "posturr" do
  version "1.5.9"
  sha256 "a5c58c73c58f1513166309ca46ccb9eaf6bd743e3bcc2672d7440a3824da1bd9"

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
