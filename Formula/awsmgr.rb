class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  version "1.0.1"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_darwin_arm64.tar.gz"
      sha256 "9d8d40730ce74e44af3d459a336e148136bc3dbaf70b2fd1acaaf0621d46742c"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_darwin_amd64.tar.gz"
      sha256 "9f1499396ea0053b0980f8869b10fddf67e86c3646f6b7efe5aefceb04cc0523"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_linux_arm64.tar.gz"
      sha256 "014133d18e43df1bd5f9e01f1c05f4b8de425edf7cc28bccd623fe228101e576"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.1/awsmgr_1.0.1_linux_amd64.tar.gz"
      sha256 "6453ed4803d9f2853e560d67e58ff166e6dcd60a9aa4f81e2811e7729a2b8a55"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
