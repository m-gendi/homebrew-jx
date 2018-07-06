class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "1.3.68"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "72cb1377be235e86f2e9d20cf7b7d8fc17698b7dbf8011cedbbecabc805f63f7"

  def install
    bin.install name
  end

end
