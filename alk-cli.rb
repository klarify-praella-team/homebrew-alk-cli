class AlkCli < Formula
  desc "The one and only solution for managing ALK credentials for the Praella rewrite locally in your keychain"
  homepage "https://admirsaheta.com"
  url "https://github.com/klarify-praella-team/alk-cli/archive/refs/tags/v.0.1.tar.gz"
  sha256 "fd2716818386852430cf5da5f4ee1bfdc185ce0c755488f77ec785c0ad58514e"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install 'alk-cli'
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test alk-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
