# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fury < Formula
  desc "Fury against the ecosystem"
  homepage "https://fury.build/"
  version "0.1"
  url "https://rkuhn.info/fury-0.1.tar.gz"
  sha256 "513d54fa5341be44b87d9e0c89535134ac5616bc512bcffff7a45b08c321d543"
  depends_on "nailgun"
  depends_on "coursier/formulas/coursier"
  depends_on "scalacenter/bloop/bloop"
  depends_on :java => "1.8+"

  def install
    zsh_completion.install "_fury"
    prefix.install "bin"
    prefix.install "lib"
  end

  test do
  end
end
