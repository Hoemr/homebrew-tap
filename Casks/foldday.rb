cask "foldday" do
  version "1.3.1"
  sha256 "61dcc36fb86704164f84422b2f56499da8d182f2f9b356fb02187cbc39ce2822"

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
