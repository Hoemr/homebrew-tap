cask "foldday" do
  version "1.3.0"
  sha256 "aa914cef118eb8908654e4b8ce0d239d00997b97d84689a6a24eff48a9f72d98"

  url "https://github.com/Hoemr/FoldDay/releases/download/v#{version}/FoldDay.app.zip"
  name "FoldDay"
  desc "MacBook clamshell keep-awake and Bluetooth proximity lock"
  homepage "https://github.com/Hoemr/FoldDay"

  depends_on macos: :sonoma

  app "FoldDay.app"

  uninstall quit: "local.lidawake"

  caveats <<~EOS
    macOS may ask for first-launch approval for this build.
    https://support.apple.com/en-us/102445

    Before uninstalling, remove the power helper in FoldDay Settings if you installed it.
  EOS
end
