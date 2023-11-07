# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Redpanda < Formula
  desc "Redpanda CLI & toolbox"
  homepage "https://redpanda.com"
  version "23.2.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.15/rpk-darwin-arm64.zip"
      sha256 "80710a6df7aa54bce95b457fe67131e318d644d819b76d31a935ecb7d77e3fe7"

      def install
        bin.install "rpk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.15/rpk-darwin-amd64.zip"
      sha256 "5d72ae715f790cf138058f389d167c76e9b70d4b4199b6963fba86ad77a037c3"

      def install
        bin.install "rpk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.15/rpk-linux-amd64.zip"
      sha256 "813a5dbf163eeb2f5d2c89f542e1c74e42fed9d5cc1096715e28e4bc7c429aba"

      def install
        bin.install "rpk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/redpanda-data/redpanda/releases/download/v23.2.15/rpk-linux-arm64.zip"
      sha256 "e9857db9e994c0a822b7f9567a87bea97dfc4414ae63ba9767ff73a4818a1250"

      def install
        bin.install "rpk"
      end
    end
  end

  def caveats
    <<~EOS
      Redpanda Keeper (rpk) is Redpanda's command line interface (CLI)
      utility. The rpk commands let you configure, manage, and tune
      Redpanda clusters. They also let you manage topics, groups,
      and access control lists (ACLs).
      Start a three-node docker cluster locally:

          rpk container start -n 3

      Interact with the cluster using commands like:

          rpk topic list

      When done, stop and delete the docker cluster:

          rpk container purge

      For more examples and guides, visit: https://docs.redpanda.com
    EOS
  end
end
