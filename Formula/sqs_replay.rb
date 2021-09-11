class SqsReplay < Formula
  desc "Replay SQS messages e.g. from a dead letter queue to the main queue"
  homepage "https://github.com/cdimascio/sqs-replay"
  url "https://github.com/cdimascio/sqs-replay/releases/download/v0.9.0/sqs-replay-mac.tar.gz"
  sha256 "da7ea07186e32e773ee620d3910ac7cba9b9ea1d9c9a7970d10ddf6c9b63dcb3"
  version "0.9.0"

  def install
    bin.install "sqs-replay"
  end
end