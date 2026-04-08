class PersonalAgent < Formula
  desc "PersonalAgent macOS menu bar assistant"
  homepage "https://github.com/acoliver/personal-agent"
  url "https://github.com/acoliver/personal-agent/releases/download/v0.2.0/personal-agent-v0.2.0-aarch64-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "247e20ef083a0b76adf1b1c7ae55a97beb06448bec0254989660e001e6150a08"
  license "MIT"

  def install
    bin.install "personal_agent_gpui" => "personal-agent"
  end

  test do
    assert_predicate bin/"personal-agent", :exist?
  end
end
