class XnxLinux < Formula
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  homepage "https://aiurovet.com/applications/xnx.html"
  url "https://github.com/aiurovet/xnx/raw/master/app/Linux/xnx-0.1.0-linux-amd64.tar.gz"
  license "MIT"

  def install
  end

  bottle do
    sha256 x86_64_linux: "a740e2d73d0e41bda0513a6d002d7babdbf80d4cca1b6d6d63620163444ac6ba"
  end

  test do
    system "xnx --help"
  end
end
