cask "espanso" do
  version "2.1.6-beta"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "63322c649d4b6aa3c4bfeddd99a1c2c095c77051271238faaaa19ede4f7e9576"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "46137b5e7316a1c85574d45468b510e14a58cd495d5eb74de74f482dd241c447"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end