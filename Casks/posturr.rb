cask "posturr" do
  version "1.4.3"
  sha256 "1fb8672a1c2dbd82ca0b5837e5480591bf5ebf8236ed423e6f5ba9aeb9daed2a"

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
