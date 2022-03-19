cask "espanso" do
  version "2.1.4-beta"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "bb52c26936b248787e9645510005e364f176031e584e8252c261e96e3f8a4000"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "475e1f0c6dc4fff20a1426ddbb3c5a89d49f1b18596e4d484a25f004d7077ec2"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end