class Gqlhash < Formula
  desc "GraphQL executable document hasher that ignores formatting diffs and comments"
  homepage "https://github.com/romshark/gqlhash"
  url "https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.4.tar.gz"
  # curl -L -o v1.2.4.tar.gz https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.4.tar.gz
  # shasum -a 256 v1.2.4.tar.gz
  sha256 "07f0d301670a640df9c9167645304c427ff165b09cc98c4cdd4d72aeb9f81235"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gqlhash", "./cmd/gqlhash"
  end

  test do
    output = shell_output("#{bin}/gqlhash -version")
    assert_match "gqlhash v1.2.4", output
  end
end
