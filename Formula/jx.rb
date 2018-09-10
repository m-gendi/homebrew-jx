class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "1.3.241"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "551732e045f972db4066deb69e54b0ed13c6ab21fb7775c2d405ba9a0fab344f"

  def install
    bin.install name
  end

end
