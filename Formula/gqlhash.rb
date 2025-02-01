class Gqlhash < Formula
  desc "GraphQL executable document hasher that ignores formatting diffs and comments"
  homepage "https://github.com/romshark/gqlhash"
  url "https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.5.tar.gz"
  # curl -L -o v1.2.5.tar.gz https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.5.tar.gz
  # shasum -a 256 v1.2.5.tar.gz
  sha256 "1410af786bbb658a29dfe8648990bd5a7cba9896ed687181435b22a7d799afc4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gqlhash", "./cmd/gqlhash"
  end

  test do
    output = shell_output("#{bin}/gqlhash -version")
    assert_match "gqlhash v1.2.5", output
  end
end
