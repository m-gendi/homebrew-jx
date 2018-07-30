class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "1.3.133"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "85b5d7270bb06809c47d875e4bc228aab1b085946ffe9e2d1f82095b60086a0c"

  def install
    bin.install name
  end

end
