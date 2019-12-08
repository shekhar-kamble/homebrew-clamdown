class Clamdown < Formula
  desc "put your MacBook to sleep despite Apple's annoying clamshell mode"
  homepage "https://github.com/shekhar-kamble/clamdown"
  url "https://github.com/shekhar-kamble/clamdown.git"
  head "https://github.com/shekhar-kamble/clamdown.git", branch: "master"

  def install
    bin.install "clamdown"
  end

  test do
    system bin/"clamdown"
  end
end