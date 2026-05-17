class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_arm64.tar.gz"
      sha256 "2b6b95499100696d469f4780d590ffbfe931d71e62b0fdbe8934fbbe5efff662"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_amd64.tar.gz"
      sha256 "fd240a37a717dc7434cf2b3f9db44e080e6eb17f3282bfc676880df2585f22ca"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_arm64.tar.gz"
      sha256 "979db327ba04cf0e12993c2c33dc5292bbabe7845ed02cabb5e37f66308462b8"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_amd64.tar.gz"
      sha256 "09f78f11fa0bfc03b0b873a4ae0ad7ecca48a1ec8321bfc7d998df34d0df6c2c"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
