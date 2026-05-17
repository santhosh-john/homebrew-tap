class Awsmgr < Formula
  desc "Operational workflow and environment diagnostics CLI for AWS engineers"
  homepage "https://github.com/santhosh-john/awsmgr"
  license "MIT"
  
  on_macos do
    on_arm64 do
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_darwin_arm64.tar.gz"
      sha256 "YOUR_SHA256_HASH_ARM64"
    end
    on_intel do
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_darwin_amd64.tar.gz"
      sha256 "YOUR_SHA256_HASH_AMD64"
    end
  end
  
  on_linux do
    on_arm64 do
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_linux_arm64.tar.gz"
      sha256 "YOUR_SHA256_HASH_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/santhosh-john/awsmgr/releases/download/v1.0.0/awsmgr_linux_amd64.tar.gz"
      sha256 "YOUR_SHA256_HASH_LINUX_AMD64"
    end
  end

  def install
    bin.install "awsmgr"
  end

  def test
    system "#{bin}/awsmgr", "help"
  end
end
