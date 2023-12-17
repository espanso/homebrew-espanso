cask "espanso" do
  version "2.2.0"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "9a6f50e0b56b00e1d0d3f8db9967117b2e25a17ddb1d0945b8397339a2a1c08c"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "d7cc6392db6244d951d0543f8050656ff72d66e2c6d420e2b5e0aeddc484692b"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end