cask "espanso" do
  version "2.1.2-alpha"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "6e4db4dfd40405411260feeac5006dc1814de98653c2e52d952d1b56e08f6400"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "9d4c5b90f5fbc2d959a8d245d6edfdc7567a3654c80e5a0d99a8ee17ad956da3"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end