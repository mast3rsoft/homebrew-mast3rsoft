class Vdvault < Formula
  desc "A tool for accesing vault"
  homepage "mast3rsoft.com"
  url "https://github.com/mast3rsoft/vdvault.git"
  head "https://github.com/mast3rsoft/vdvault.git"

  version "2.0.0"
  license "MIT"

   depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
   system "cargo", "install", *std_cargo_args
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dev-new`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
