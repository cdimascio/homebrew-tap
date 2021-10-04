class SqsReplay < Formula
  desc "Replay SQS messages e.g. from a dead letter queue to the main queue"
  homepage "https://github.com/cdimascio/sqs-replay"
  url "https://github.com/cdimascio/sqs-replay/releases/download/v0.10.0/sqs-replay-mac.tar.gz"
  sha256 "db913863e852033f91fb6df59770c33bf9df52fe04083c681926cf2d08f0d8f6"
  version "0.10.0"

  def install
    bin.install "sqs-replay"
  end
end