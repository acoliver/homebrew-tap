class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.4/personal-agent-v0.3.4-aarch64-apple-darwin.tar.gz"
  version "0.3.4"
  sha256 "a2535c55a4148389b0302640fc858fa7492afd99e3eb20f9d3b7d148b0e0e853"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
