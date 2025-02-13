# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LogseqDoctor < Formula
  desc "Heal your Logseq Markdown files"
  homepage "https://github.com/andreoliwa/logseq-doctor"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreoliwa/logseq-doctor/releases/download/v0.5.0/logseq-doctor_Darwin_x86_64.tar.gz"
      sha256 "71f9f07068d6ecee578a12e7159ebe0bf0a6e7966e6e873efc8991871fc44b23"

      def install
        bin.install "logseq-doctor" => "lsdg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreoliwa/logseq-doctor/releases/download/v0.5.0/logseq-doctor_Darwin_arm64.tar.gz"
      sha256 "8e822b19041c479482ef43eca085df6f81fd939edec28382b6599bb64dc9393d"

      def install
        bin.install "logseq-doctor" => "lsdg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreoliwa/logseq-doctor/releases/download/v0.5.0/logseq-doctor_Linux_x86_64.tar.gz"
      sha256 "748c4f8d7cba0a8e4af039da39feaed649e8a18e38ba7eb56d279229cc77a478"

      def install
        bin.install "logseq-doctor" => "lsdg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreoliwa/logseq-doctor/releases/download/v0.5.0/logseq-doctor_Linux_arm64.tar.gz"
      sha256 "936b764596a8664a191b2a5f97bf41958fb24295c6fbcb1bf7db9b8ebc6290e5"

      def install
        bin.install "logseq-doctor" => "lsdg"
      end
    end
  end

  test do
    assert_match "Logseq Doctor (Go) heals your Markdown files for Logseq.", shell_output("#{bin}/lsdg")
  end
end
