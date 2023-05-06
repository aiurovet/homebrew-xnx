class XnxMacos < Formula
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  homepage "https://aiurovet.com/applications/xnx.html"
  url "https://github.com/aiurovet/xnx/raw/master/app/Linux/xnx-0.1.0-linux-amd64.tar.gz"
  license "MIT"

  def install
  end

  bottle do
    sha256 big_sur: "bc3051c69dc1ede23c31b50de8a8831b987fe33d408ea781e1d97b867a727c3b"
  end

  test do
    system "xnx --help"
  end
end
