class Chatty < Formula
  desc "Pavan's Chatty CLI utility"
  homepage "https://github.com/pavanpaik/chatty"
  url "https://github.com/pavanpaik/chatty/archive/refs/tags/v0.1.0.tar.gz"
  # Replace with the actual artifact checksum before publishing.
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/chatty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chatty --version")
  end
end
