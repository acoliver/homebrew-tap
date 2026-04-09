class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.2.2/personal-agent-v0.2.2-aarch64-apple-darwin.tar.gz"
  version "0.2.2"
  sha256 "0097ff6ec7fb318eef058815f5a600279e32e0d7349237d4276db03108d4824b"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
