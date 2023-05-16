#
# Copyright (c) 2023 Alexander Iurovetski
#
# brew tap aiurovet/chest && brew install chest
# brew uninstall chest && brew untap aiurovet/chest
#
# Upon any change, this file should be copied
# from chest/scripts/install/brew to homebrew-chest/
#
class Chest < Formula
  # Getting short class name, as "#{name}" gets stripped off the namespace only
  # when reached the install function
  #
  x = "#{name}".split(":")
  $name = x[x.length - 1].downcase

  # Formula description
  #
  desc "Command-line utility for sophisticated search and replace followed by calling external executables"
  license "MIT"
  version "0.1.0"
  homepage "https://aiurovet.com/applications/#{$name}.html"

  # List of all setup variations
  #
  $setups = [{
    "os_name" => "Linux",
    "tar_name" => "#{$name}-#{version}-linux-amd64.tar.gz",
    "base_url" => "https://github.com/aiurovet/#{$name}/raw/#{version}/app/Linux/",
    "sha_256" => "485cc4c650a377ebd1a74c5131046db5ab33baeaa95f7a9cd2c2cd4238ba23ac",
  }, {
    "os_name" => "macOS",
    "tar_name" => "#{$name}-#{version}-macos.tar.gz",
    "base_url" => "https://github.com/aiurovet/#{$name}/raw/#{version}/app/macOS/",
    "sha_256" => "8f25a7bdaca614865a7b59b1c84d653f6a4c65bed6358ec409af83fd4b4313b3",
  },];

  # Getting this setup and full URL based on the current OS
  #
  $setup = $setups[OS.linux? ? 0 : 1];
  $full_url = $setup["base_url"] + $setup["tar_name"]

  url $full_url
  sha256 $setup["sha_256"]

  # Dummy bottle to avoid enforced build from source. Cacnnot unpack here, as
  # the compiled Dart executable is giving weird output. The actual unpacking
  # is done in the install function
  #
  bottle do
  end

  # Unpack downloaded archive explicitly and create necessary symlinks
  #
  def install
    cellar_root = "#{HOMEBREW_PREFIX}/Cellar/"
    source_path = "#{cellar_root}#{$name}/#{version}/#{$name}"

    system "tar", "-C", "#{cellar_root}", "-x", "-f", cached_download
    bin.install_symlink "#{source_path}"
  end
end
