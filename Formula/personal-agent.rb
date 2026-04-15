class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.2/personal-agent-v0.3.2-aarch64-apple-darwin.tar.gz"
  version "0.3.2"
  sha256 "bb6342fd78c36a42f1a18b679292a1cd0a31518f8756e254e10cb9a189b8296d"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
