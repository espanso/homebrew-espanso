cask "espanso" do
  version "2.1.7-beta"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "4662260907fed968befe6b29587ac0a1f1108bd3b5c90db44fbae4ea36e4a603"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "afb9705bf329b12a7500e2edf1a321dd51b76405e90dcac14799eb7da021a99a"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end