class Xnx < Formula
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  homepage "https://aiurovet.com/applications/xnx.html"
  url "https://github.com/aiurovet/xnx/raw/"
  version "0.1.0"
  license "MIT"

  bottle do
    if OS.linux?
      root_url "https://github.com/aiurovet/xnx/raw/master/app/Linux"
      sha256 x86_64_linux: "6af1847d443fbecc210619e457cd603012014535f8851184c0fbecdf2751ff95"
    elsif OS.mac?
      root_url "https://github.com/aiurovet/xnx/raw/master/app/macOS"
      sha256 big_sur: "bc3051c69dc1ede23c31b50de8a8831b987fe33d408ea781e1d97b867a727c3b"
    end
  end

  # def install
  #   prefix.install #{HOMEBREW_PREFIX}/Cellar/xnx/0.1.0
  #   system "cd", "#{HOMEBREW_PREFIX}/Cellar/xnx/0.1.0"
  #   system "tar", "xvfz", "./xnx-0.1.0-linux-amd64.tar.gz"
  #   system "rm", "-f", "./xnx-0.1.0-linux-amd64.tar.gz"
  # end

  # test do
  #   system "#{HOMEBREW_PREFIX}/Cellar/xnx/0.1.0/xnx", "--version"
  # end
end
