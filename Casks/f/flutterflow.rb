cask "flutterflow" do
  version "5.0.2"
  sha256 "f552addd235de28564023ef9633560a418fdf5382587df3916ab810fefa0766f"

  url "https://storage.googleapis.com/flutterflow-downloads/macos/flutterflow-#{version}-macos.zip",
      verified: "storage.googleapis.com/flutterflow-downloads/"
  name "FlutterFlow"
  desc "Visual development platform"
  homepage "https://flutterflow.io/"

  livecheck do
    url "https://storage.googleapis.com/flutterflow-downloads/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "FlutterFlow.app"

  zap trash: [
    "~/Library/Application Support/io.flutterflow.prod.mac",
    "~/Library/Caches/io.flutterflow.prod.mac",
    "~/Library/HTTPStorages/io.flutterflow.prod.mac",
    "~/Library/Preferences/io.flutterflow.prod.mac.plist",
    "~/Library/Saved Application State/io.flutterflow.prod.mac.savedState",
  ]
end
