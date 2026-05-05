class Genfire < Formula
  desc "Command-line interface for the GenFire generative media platform"
  homepage "https://github.com/genfireai/cli"
  url "https://registry.npmjs.org/@genfire/cli/-/cli-0.3.0.tgz"
  sha256 "06e5f6b3a9c413e817805e8d39de0ed456f7070ef6f4cd4673955c05725d14e7"
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
