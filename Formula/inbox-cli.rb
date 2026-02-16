class InboxCli < Formula
  desc "An agentic Downloads folder organizer for macOS"
  homepage "https://github.com/pavanpaik/inbox-cli"
  url "https://github.com/pavanpaik/inbox-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e75b75b77062fff6b827fbd6f65fcd2c31980de58c559124d2c4e5096a662448"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Tame your Downloads", shell_output("#{bin}/inbox --help")
  end
end
