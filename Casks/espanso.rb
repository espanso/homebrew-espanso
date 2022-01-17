cask "espanso" do
  version "2.1.3-alpha"

  if Hardware::CPU.intel?
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-Intel.zip"
    sha256 "2b23e1f5ebb9a774c220da0465d3311accbaa38e6653b6314553f9d06a6e723c"
  else
    url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-M1.zip"
    sha256 "cf1fcc49bae6dd8f6f69983f4b93c2880ed278694bbe6958ee52bf3517424c15"
  end

  name "Espanso"
  desc "A Privacy-first, Cross-platform Text Expander"
  homepage "https://espanso.org/"

  app "Espanso.app"

  zap trash: "~/Library/Caches/espanso"
end