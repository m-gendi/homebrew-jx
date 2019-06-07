class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.github.io/jenkins-x-website/"
  version "2.0.241"
   
  url "https://github.com/jenkins-x/jx/releases/download/v#{version}/jx-darwin-amd64.tar.gz"
  sha256 "fcc8d958766c53233ba1b4a5ba19d72ca999507cbb1caa18f746db608b200eb3"

  def install
    bin.install name

    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output

    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output

    prefix.install_metafiles
  end

end
