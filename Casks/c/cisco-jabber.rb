cask "cisco-jabber" do
  version "20250430033337"
  sha256 "d4c8903203097fc2043750903c7ed07564179a1a0a3357606c8a419fb15b8def"

  url "https://binaries.webex.com/jabberclientmac/#{version}/Install_Cisco-Jabber-Mac.pkg"
  name "Cisco Jabber"
  desc "Jabber client from Cisco"
  homepage "https://www.webex.com/downloads/jabber.html"

  livecheck do
    url :homepage
    regex(%r{jabberAppUrl =.*?(\d+)/Install[._-]Cisco[._-]Jabber[._-]Mac\.pkg}i)
  end

  pkg "Install_Cisco-Jabber-Mac.pkg"

  uninstall pkgutil: [
              "com.cisco.Jabber",
              "com.cisco.pkg.jabberplugin",
              "com.jabra.CiscoJabberPlugin",
              "com.logitech.LogiUCPlugin",
              "com.PlantronicsPlugin.CiscoJabberPlugin",
              "com.sennheiser.CiscoJabberPlugin",
              "com.Sennheiser.pkg.SennheiserSDKv789904MacSDKv8602",
            ],
            delete:  [
              "/Applications/Cisco Jabber.app",
              "/Library/Application Support/Cisco/Unified Communications/Jabber",
              "/Library/Logs/Jabber",
            ]

  zap trash: [
    "~/Library/Application Support/Cisco/Unified Communications/Jabber",
    "~/Library/Caches/com.cisco.Jabber",
    "~/Library/Logs/Jabber",
    "~/Library/Preferences/com.cisco.Jabber.plist",
    "~/Library/WebKit/com.cisco.Jabber",
  ]
end
