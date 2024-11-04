class Gqlhash < Formula
  desc "GraphQL executable document hasher that ignores formatting diffs and comments"
  homepage "https://github.com/romshark/gqlhash"
  url "https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.2.tar.gz"
  # curl -L -o v1.2.2.tar.gz https://github.com/romshark/gqlhash/archive/refs/tags/v1.2.2.tar.gz
  # shasum -a 256 v1.2.2.tar.gz
  sha256 "45d2afc07dabfbf332611ac09c645b3c773d9271e653bbe0ea735f3cf19c6414"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"gqlhash", "./cmd/gqlhash"
  end

  test do
    output = shell_output("#{bin}/gqlhash -version")
    assert_match "gqlhash v1.2.2", output
  end
end
