class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.0/personal-agent-v0.3.0-aarch64-apple-darwin.tar.gz"
  version "0.3.0"
  sha256 "180c354a9b98a183c0284648eb985cc3af1a94551cd16422f585a738e7a309ab"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
