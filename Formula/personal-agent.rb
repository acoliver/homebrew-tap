class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.1/personal-agent-v0.3.1-aarch64-apple-darwin.tar.gz"
  version "0.3.1"
  sha256 "b4f0bb443f55f0d9c50a6fac26a0b0c014160c51fb3f6a825332fcb5557e8465"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
