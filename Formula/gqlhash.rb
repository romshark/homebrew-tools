class Gqlhash < Formula
  desc "GraphQL executable document hasher that ignores formatting diffs and comments"
  homepage "https://github.com/romshark/gqlhash"
  url "https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "d3d9b103b85549845705425eb18af3cb917fb0aa69387d54a65377cfd4aacf85"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gqlhash", "./cmd/gqlhash"
  end

  test do
    output = shell_output("#{bin}/gqlhash -version")
    assert_match "gqlhash v1.2.1", output
  end
end