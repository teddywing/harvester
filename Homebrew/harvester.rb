class Harvester < Formula
  desc "A program that wraps 'hcl' to interact with Harvest with a Timetasker-like interface"
  homepage "https://github.com/teddywing/harvester"
  url "https://github.com/teddywing/harvester/archive/v0.0.1.tar.gz"
  sha256 "ea136e11c80beb96c7e272c38d0376f5b8f1a23e09e4bd6297e12795ba858c3b"

  def install
    bin.install "harvester"
    bash_completion.install "harvester.bash-completion" => "harvester"
  end

  def caveats; <<~EOS
    To enable tab completion, add the following to your bash profile:

        source #{etc}/bash_completion.d/harvester
    EOS
  end

  test do
    shell_output("bash -c 'harvester --help'")
  end
end
