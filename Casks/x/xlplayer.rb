cask "xlplayer" do
  version "3.1.4.66056"
  sha256 "97773dd9ed4accf943aee65a5805efd8519adab5fb38fcdde7a73443d1d1090b"

  url "https://down.sandai.net/mac/player_#{version}.dmg",
      verified: "down.sandai.net/"
  name "XLPlayer for Mac"
  name "迅雷影音 for Mac"
  desc "Video player"
  homepage "https://video.xunlei.com/mac.html"

  livecheck do
    url "https://dl.xunlei.com/"
    regex(/href=.*?player[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "XLPlayer.app"

  zap trash: [
    "~/Library/Application Support/XLPlayer",
    "~/Library/Caches/com.xunlei.XLPlayer",
    "~/Library/HTTPStorages/com.xunlei.XLPlayer",
    "~/Library/Preferences/com.xunlei.XLPlayer.plist",
    "~/Library/WebKit/com.xunlei.XLPlayer",
  ]
end
