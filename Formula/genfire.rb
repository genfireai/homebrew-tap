class Genfire < Formula
  desc "Command-line interface for the GenFire generative media platform"
  homepage "https://github.com/genfireai/cli"
  url "https://registry.npmjs.org/@genfire/cli/-/cli-0.2.0.tgz"
  sha256 "9ef1c50ca262ce8ced31d5e6a2b98025df92c960d4e1352cbc08df7003cd9201"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "GenFire generative media CLI", shell_output("#{bin}/genfire --help")
  end
end
