cask "espanso" do
  version "2.2.1"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "369ad7eb9a30015a3836012970acd15b3b06c6f67349a89ced6bb3ae9c3f2d20"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "419687d4d954630c8690e315eb7830b28f03b95521d720fc2bd960e084d49993"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end