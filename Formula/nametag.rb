# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nametag < Formula
  desc "Command-line tool for Nametag"
  homepage "https://getnametag.com"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/nametaginc/cli/releases/download/v0.1.11/nametag_Darwin_x86_64.tar.gz"
      sha256 "0c67011d9e34150a2fcf8f289bd4842010c35ba97ef6bf994f8fa305b4c10f88"

      def install
        bin.install "nametag" => "nametag"
      end
    end
    on_arm do
      url "https://github.com/nametaginc/cli/releases/download/v0.1.11/nametag_Darwin_arm64.tar.gz"
      sha256 "96fdc6c24f2253c09a9b05838fe02b591e0c9a265e5d52ceb10b63434dc2577d"

      def install
        bin.install "nametag" => "nametag"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nametaginc/cli/releases/download/v0.1.11/nametag_Linux_x86_64.tar.gz"
        sha256 "d10dab85dcc75cf3f70a2364c52e3c82a9853d5ec58430d61d968d101c782e1d"

        def install
          bin.install "nametag" => "nametag"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nametaginc/cli/releases/download/v0.1.11/nametag_Linux_arm64.tar.gz"
        sha256 "d5c7765f86f702954d35678cca1684958049052bff2d0272b4319015932812ed"

        def install
          bin.install "nametag" => "nametag"
        end
      end
    end
  end

  def caveats
    <<~EOS
      See https://getnametag.com/docs/cli
    EOS
  end

  test do
    system "#{bin}/nametag", "--version"
  end
end
