class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.1.0/personal-agent-v0.1.0-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "6a6bcc6211b6f13d7dc3eb5417d48ceb782ce8fc87a398137a0a8b2b5a2b7a02"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
