# Written by idk's release from v0.1.1's release.json. A change made here is replaced by the next one.
cask "idk" do
  version "0.1.1"
  sha256 "e7b07113180118970f3b3c0b4520940c4beca05fb3824b99ce7f18081b92eaed"

  url "https://idk-ide.com/releases/v#{version}/idk-#{version}-arm64.dmg"
  name "idk"
  desc "IDE that shows the logic of what your coding agent wrote, not the code"
  homepage "https://idk-ide.com/"

  livecheck do
    url "https://idk-ide.com/release.js"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "idk.app"

  zap trash: [
        "~/.agents/skills/idk",
        "~/.claude/skills/idk",
        "~/.idk",
        "~/Library/Application Support/idk",
        "~/Library/Caches/com.github.super-amos.idk",
        "~/Library/HTTPStorages/com.github.super-amos.idk",
        "~/Library/Preferences/com.github.super-amos.idk.plist",
        "~/Library/Saved Application State/com.github.super-amos.idk.savedState",
      ],
      rmdir: [
        "~/.agents",
        "~/.agents/skills",
      ]
end
