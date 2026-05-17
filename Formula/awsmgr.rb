class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  version "1.0.1"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_darwin_arm64.tar.gz"
      sha256 "07a9f969c01d0c7a634fc873c43ed2aa06f98f92517cd18b64c40c527568a1c8"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_darwin_amd64.tar.gz"
      sha256 "824a59f3dc27d76a8e0e7b07de8ea720396e1fdc970456268f24a43fd8c544ed"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_linux_arm64.tar.gz"
      sha256 "64c4ec64bddf77aaa719a7e15cc43eb29a124742ae3b06731d5986b0c429fe66"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_linux_amd64.tar.gz"
      sha256 "51bc0d50e96bf15a9729f2d17fd72a9c08b74de30bf2642145470b1ddb7594b6"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
