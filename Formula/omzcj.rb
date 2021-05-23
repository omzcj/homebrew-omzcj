# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Omzcj < Formula
  desc "omzcj"
  homepage "https://assassinor.github.io"
  url "https://github.com/assassinor/opt.git"
  version "0.0.1"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "bin/app2ipa"
    bin.install "bin/cartool"
    bin.install "bin/dotfiles"
    bin.install "bin/imgcat"
    bin.install "bin/iterm2-recv-zmodem"
    bin.install "bin/iterm2-send-zmodem"
    bin.install "bin/launchpad"
    bin.install "bin/trial"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test trial-reset`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
