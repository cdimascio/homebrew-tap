class AwsCredentialsManager < Formula
  desc "Manage multiple AWS credentials files e.g. ~/.aws/credentials"
  homepage "https://github.com/cdimascio/aws-credentials-manager"
  url "https://github.com/cdimascio/aws-credentials-manager/archive/v0.9.2.tar.gz"
  sha256 "f8611273829c14782598472ca5228b399f12faf8bec3f476b0d19b44df2f0644"
  license "MIT"

  depends_on "bash" => :run

  def install
    bin.install "awscm"
  end

  test do
  end
end

