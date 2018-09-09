# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fury < Formula
  desc "Fury against the ecosystem"
  homepage "https://fury.build/"
  version "0.1.1"
  url "https://rkuhn.info/fury-0.1.1.tar.gz"
  sha256 "9acdb0d554d36d8c1874a7a21b3f94935033e4b7f3555cbaa7f39fd82af4f6ac"
  depends_on "nailgun"
  depends_on "coursier/formulas/coursier"
  depends_on "scalacenter/bloop/bloop"
  depends_on :java => "1.8+"
  depends_on "scala"

  def install
    zsh_completion.install "_fury"
    prefix.install "bin"
    prefix.install "lib"
  end

  test do
  end
end
