class Xnx < Formula
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  homepage "https://aiurovet.com/applications/xnx.html"
  url "https://github.com/aiurovet/xnx"
  version "0.1.0"
  license "MIT"

  bottle do
    if OS.linux?
      root_url "https://github.com/aiurovet/xnx/raw/master/app/Linux"
      sha256 x86_64_linux: "afa9930d72151e4d558153f24f6d4f1b2ec86a74403b47eaa80af61f882c44be"
    elsif OS.mac?
      root_url "https://github.com/aiurovet/xnx/raw/master/app/macOS"
      sha256 big_sur: "9829601feda4401a92f5587cfa6e9f7b40b1e4f71e6152a3934bca7ba9f3309a"
    end
  end

  def install
    bin.install_symlink "#{HOMEBREW_PREFIX}/Cellar/xnx/0.1.0/xnx"
  end
end
