class CredentialsManager < Formula
    desc "manage and switch between multiple ~/.aws/credentials files"
    homepage "http://github.com/cdimascio/homebrew-credentials-manager-aws"
    version "0.9.0"
    url "http://github.com/cdimascio/homebrew-credentials-manager-aws/get/HEAD.zip", :using => :curl
  
    def install
      bin.install "bin/cma"
    end
  end