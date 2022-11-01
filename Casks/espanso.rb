cask "espanso" do
  version "2.1.8"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "a17c03ff341beaf5a286aaab033dc443d703ed41f9dbfae653289dab00120bec"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "e84b5a96def1d793997fc8ee4e380f11b1d0515cf120402cd7aec6e07bafb74e"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end