class HomebrewAwsCredentialsManager < Formula
  desc "manage and switch between multiple ~/.aws/credentials files"
  homepage "http://github.com/cdimascio/homebrew-aws-credentials-manager"
  url "https://github.com/cdimascio/homebrew-aws-credentials-manager/archive/v0.9.0.tar.gz"
  version "0.9.0"
  # sha256 "3cecb3fe5e116c7427370cfd4d1b7f7c47d4482969d417126dc7c78ebf56ff18"
  license "MIT"

  depends_on "bash" => :run

  def install
    # # move 'myscript.sh' under #{prefix}/bin/
    # bin.install "cma.sh"

    # OR move 'myscript.sh' to #{prefix}/bin/mybettername
    bin.install "bin/awscm.sh" => "awscm"

    # # OR move *.sh under bin/
    # bin.install Dir["*.sh"]
  end
end
