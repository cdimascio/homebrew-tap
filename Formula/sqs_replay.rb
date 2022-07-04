class SqsReplay < Formula
  desc "Replay SQS messages e.g. from a dead letter queue to the main queue"
  homepage "https://github.com/cdimascio/sqs-replay"
  url "https://github.com/cdimascio/sqs-replay/releases/download/0.12.0/sqs-replay-mac.tar.gz"
  sha256 "0aacdc0e1287998de9d8ac275df4f6babf0429dd76ef9b4de86b8e0e01cda2dd"
  version "0.12.0"

  def install
    bin.install "sqs-replay"
  end
end
