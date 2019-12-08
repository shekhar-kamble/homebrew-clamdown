class Clamdown < Formula
  desc "put your MacBook to sleep despite Apple's annoying clamshell mode"
  homepage "https://github.com/shekhar-kamble/clamdown"
  url "https://github.com/shekhar-kamble/clamdown.git", tag: "0.1-alpha"
  head "https://github.com/shekhar-kamble/clamdown.git", branch: "master"
  version "0.1"

  plist_options startup: true, manual: "clamdown"

  def install
    bin.install "clamdown"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
        <string>clamdown</string>
      <key>ProgramArguments</key>
        <array>
            <string>bash</string>
            <string>-c</string>
            <string>#{opt_bin}/clamdown</string>
        </array>
      <key>ThrottleInterval</key>
        <integer>2</integer>
      <key>KeepAlive</key>
      <true />
      <key>StandardErrorPath</key>
      <string>/dev/null</string>
    </dict>
    </plist>
    EOS
  end
  test do
    system bin/"clamdown"
  end
end