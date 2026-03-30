class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.0.0/personal-agent-v0.0.0-aarch64-apple-darwin.tar.gz"
  version "0.0.0"
  sha256 "REPLACE_ON_FIRST_RELEASE"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
