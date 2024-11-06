class Gqlhash < Formula
  desc "GraphQL executable document hasher that ignores formatting diffs and comments"
  homepage "https://github.com/romshark/gqlhash"
  url "https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.3.tar.gz"
  # curl -L -o v1.2.3.tar.gz https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.3.tar.gz
  # shasum -a 256 v1.2.3.tar.gz
  sha256 "058df40b17010e79a07628023b1a31ddff167c10a55dfbce01243f2962b717cb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gqlhash", "./cmd/gqlhash"
  end

  test do
    output = shell_output("#{bin}/gqlhash -version")
    assert_match "gqlhash v1.2.3", output
  end
end
