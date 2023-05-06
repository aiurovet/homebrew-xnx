class XnxLinux < Formula
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  homepage "https://aiurovet.com/applications/xnx.html"
  version "0.1.0"
  license "MIT"

  bottle do
    root_url "https://github.com/aiurovet/xnx/raw/master/app/bottles"

    if OS.linux?
      sha256 x86_64_linux: "a740e2d73d0e41bda0513a6d002d7babdbf80d4cca1b6d6d63620163444ac6ba"
    elsif OS.mac?
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
