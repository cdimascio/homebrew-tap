class AwsCredentialsManager < Formula
  desc "Manage multiple AWS credentials files e.g. ~/.aws/credentials"
  homepage "https://github.com/cdimascio/aws-credentials-manager"
  url "https://github.com/cdimascio/aws-credentials-manager/archive/v0.10.0.tar.gz"
  sha256 "592241b2c1efe398b3b3f473e43704cde934ed203d0b66e2ef3cd87b00f88bf6"
  license "MIT"

  depends_on "bash" => :run

  def install
    bin.install "awscm"
  end

  test do
  end
end

