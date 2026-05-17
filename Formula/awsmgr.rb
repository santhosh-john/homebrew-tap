class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_darwin_arm64.tar.gz"
      sha256 "PENDING"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_darwin_amd64.tar.gz"
      sha256 "PENDING"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_linux_arm64.tar.gz"
      sha256 "PENDING"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_linux_amd64.tar.gz"
      sha256 "PENDING"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
