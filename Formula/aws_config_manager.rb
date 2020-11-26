require "language/go"
class AwsConfigManager < Formula
  desc "Manage multiple AWS config and credentials file pairs e.g. ~/.aws/credentials, ~/.aws/config"
  homepage "https://github.com/cdimascio/aws-config-manager"
  url "https://github.com/cdimascio/aws-config-manager/archive/v2.0.0.tar.gz"
  sha256 "b242dd4921693155fee7de1bcbf5a1f449572deccb34be9d7f28a2c92c67c091"
  license "MIT"

  go_resource "github.com/urfave/cli" do
    url "https://github.com/urfave/cli.git",
        :revision => "09ac54c2f97f4249282baf266c54a09fab1bef58"
  end
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/cdimascio/aws-config-manager"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/cdimascio/aws-config-manager
    bin_path.install Dir["*"]
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "mod", "vendor"
      system "go", "build", "-o", bin/"acm", "."
    end
  end

  test do
  end
end

