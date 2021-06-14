# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yot < Formula
  desc "A YAML Overlay Tool with templating tendencies."
  homepage "https://github.com/vmware-tanzu-labs/yaml-overlay-tool"
  version "0.5.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/yaml-overlay-tool/releases/download/v0.5.0/yot_v0.5.0_Darwin_x86_64.tar.gz"
      sha256 "2250ea0c7ed8ad6272d19e879cc27830ee319c9b1883bc7d66f20260d7236348"
    end
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-labs/yaml-overlay-tool/releases/download/v0.5.0/yot_v0.5.0_Darwin_arm64.tar.gz"
      sha256 "369126d9c95d723fbdd8cdc0d3d950430681959914a8db264bce25ee8555fd5b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/yaml-overlay-tool/releases/download/v0.5.0/yot_v0.5.0_Linux_x86_64.tar.gz"
      sha256 "927ec3e92350923eaa65b262363048aaa5bfbf26e8828b5c82409fed14914279"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-labs/yaml-overlay-tool/releases/download/v0.5.0/yot_v0.5.0_Linux_arm64.tar.gz"
      sha256 "463df31c1cdca0d5467ceb5ee382e3f5f4de629b42fb5e519e2f2b24f699a92e"
    end
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "yot"
    bash_completion.install "completions/yot.bash" => "yot"
    zsh_completion.install "completions/yot.zsh" => "_yot"
    fish_completion.install "completions/yot.fish"
  end

  test do
    system "#{bin}/yot --version"
  end
end
