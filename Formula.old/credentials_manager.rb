class CredentialsManager < Formula
    desc "manage and switch between multiple ~/.aws/credentials files"
    homepage "http://github.com/cdimascio/homebrew-aws-credentials-manager"
    version "0.9.0"
    url "http://github.com/cdimascio/homebrew-aws-credentials-manager/get/HEAD.zip", :using => :curl
  
    def install
      bin.install "./bin/cma"
    end


  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test homebrew-aws-credentials-manager`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "true"
  # end
  end