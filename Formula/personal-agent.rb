class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.2.1/personal-agent-v0.2.1-aarch64-apple-darwin.tar.gz"
  version "0.2.1"
  sha256 "142d40aed203c1779b11a9ba740ff0e09b4f5f01a27ea2ce9e1f68bfb128df93"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
