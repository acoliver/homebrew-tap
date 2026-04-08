class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.2.0/personal-agent-v0.2.0-aarch64-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "0a1f9e06f99ae4de0a543b31c2021c4af2a636e434ac905f820c7cd800053a03"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
