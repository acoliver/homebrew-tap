class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.3.3/personal-agent-v0.3.3-aarch64-apple-darwin.tar.gz"
  version "0.3.3"
  sha256 "6cf7276902070738bc8c38e82dc4171b9f76a89cf8e6afba07f97fc4089c530b"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
