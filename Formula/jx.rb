# This file was generated by GoReleaser. DO NOT EDIT.
class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.io/"
  version "2.0.420"

  if OS.mac?
    url "http://github.com/jenkins-x/jx/releases/download/v2.0.420/jx-darwin-amd64.tar.gz"
    sha256 "b4f8092c2d0060b13d84abac907b3eec59420e23e8f6ccb3ec39c9cc6fc727e2"
  elsif OS.linux?
    url "http://github.com/jenkins-x/jx/releases/download/v2.0.420/jx-linux-amd64.tar.gz"
    sha256 "fcc26517ee65f20bc830729fa368d0c5e9a839722a838fc02e54a6dc188b1e8b"
  end

  def install
    bin.install name
    
    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output
    
    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output
    
    prefix.install_metafiles
  end

  test do
    system "#{bin}/jx --version"
  end
end
