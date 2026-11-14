# Written by idk's release from v0.3.1's release.json. A change made here is replaced by the next one.
cask "idk" do
  version "0.3.1"
  sha256 "b0c00c7ef46ed645261cdbd56a9a1bb44dc031f1cc8d2626d4daa0357d637fbc"

  url "https://github.com/finding-meaning/idk-releases/releases/download/v#{version}/idk-#{version}-arm64.dmg",
      verified: "github.com/finding-meaning/idk-releases/"
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
