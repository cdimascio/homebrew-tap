class AwsCredentialsManager < Formula
  desc "Manage multiple AWS credentials files e.g. ~/.aws/credentials"
  homepage "https://github.com/cdimascio/aws-credentials-manager"
  url "https://github.com/cdimascio/aws-credentials-manager/archive/v1.0.0.tar.gz"
  sha256 "9730dec73a50f80b5d841fb041c9d2ce6b89e08c049c8afc12a9a4ef982957a0"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "awscm"
  end

  test do
  end
end

