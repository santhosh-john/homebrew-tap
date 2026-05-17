class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_arm64.tar.gz"
      sha256 "a09c72ff5090d5e7f7378aac6463347f058bff474c8269eb7f7d6d5aa1f39675"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_amd64.tar.gz"
      sha256 "e448192f5eda30b9d70eaafa2c80cf87c7002b4e3bfed1f66887cb5328b9b63c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_arm64.tar.gz"
      sha256 "a5963958eb38c01253ac571ed38374136d4b3b3b3ac29e402a579f96099612cf"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_amd64.tar.gz"
      sha256 "bb09efd8b3f7ef9b4affa454a69c2ebeacedd6716f357fe0ecdf231a2d98fbc9"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
