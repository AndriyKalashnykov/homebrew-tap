# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OperatorBuilder < Formula
  desc "A Kubebuilder plugin to accelerate the development of Kubernetes operators."
  homepage "https://github.com/nukleros/operator-builder"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nukleros/operator-builder/releases/download/v0.7.0/operator-builder_v0.7.0_Darwin_x86_64.tar.gz"
      sha256 "14793d01be079d8a86d3f3d73f1a168b2f529fc7f43bd33fb985bf14fdfba749"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nukleros/operator-builder/releases/download/v0.7.0/operator-builder_v0.7.0_Darwin_arm64.tar.gz"
      sha256 "90190e8f262b849798af0a47a6828779f86079a990c396c5194c903047c42667"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nukleros/operator-builder/releases/download/v0.7.0/operator-builder_v0.7.0_Linux_x86_64.tar.gz"
      sha256 "89aa7e6ff04832deeaef1ebf0a7419b9fa54218c9e4cf2c2422c6ae06e4b8fc6"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nukleros/operator-builder/releases/download/v0.7.0/operator-builder_v0.7.0_Linux_arm64.tar.gz"
      sha256 "d0a9b810ed06cd3eb91bd52bc8f3fc75c04fe6689ad2aeb9507ca7df472013ed"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
  end

  depends_on "kubectl"
  depends_on "golang"
  depends_on "make" => :optional

  test do
    system "#{bin}/operator-builder version"
  end
end
