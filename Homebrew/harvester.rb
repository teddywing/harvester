class Harvester < Formula
  desc "A program that wraps 'hcl' to interact with Harvest with a Timetasker-like interface"
  homepage "https://github.com/teddywing/harvester"
  url "https://github.com/teddywing/harvester/archive/v0.1.0.tar.gz"
  sha256 "76faa9c83480a792fd4889bd95f930674898bff1037a0cfbeb31a1e9b9c23b10"

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
