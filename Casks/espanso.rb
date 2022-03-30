cask "espanso" do
  version "2.1.5-beta"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "6058ea8b851073ab97a6ffd257127ef7cfd367ccc6c290648217b3b657319539"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "8e71bf8904f3418ddc54c8faeb9e1f40fe4a57bef81d6c93468dbf0c55bcb210"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end