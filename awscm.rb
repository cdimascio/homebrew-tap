class AwsCredentialsManager < Formula
  desc "Manage multiple AWS credentials files e.g. ~/.aws/credentials"
  homepage "https://github.com/cdimascio/aws-credentials-manager"
  url "https://github.com/cdimascio/aws-credentials-manager/archive/v0.9.2.tar.gz"
  sha256 "137083543278ced4f69dedf870f7bcb0ece04d01be8300b672ca3168fbdcfec3"
  license "MIT"

  depends_on "bash" => :run

  def install
    bin.install "awscm.sh" => "awscm"
  end

  test do
  end
end
