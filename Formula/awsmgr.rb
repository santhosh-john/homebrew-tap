class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_arm64.tar.gz"
      sha256 "6c71369e25b9acb7323b9cfd219151c70d2468242b33dc2bef02bdceea3fd0fd"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_darwin_amd64.tar.gz"
      sha256 "3e44afe0fac0f14a616e635cee0236b48fc928b32a96ec58bc12e561545be82a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_arm64.tar.gz"
      sha256 "ba8e9db074591cc319432400043f9553f03c9fe90cad860762076d9e592d13cf"
    else
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_1.0.0_linux_amd64.tar.gz"
      sha256 "3ccd6a92d6a4a9a9314d70bbcf4a5d0d5905d8a6cbba9c27e8526307cc26897a"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system bin/"awsmgr", "help"
  end
end
