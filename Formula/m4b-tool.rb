# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "m4b-tool.fynder.de"
  url "https://github.com/sandreas/m4b-tool/releases/download/v.0.4.0/m4b-tool.tar.gz"
  sha256 "3a29da8529c4f17d41c9a1747b4517b316c92562f559d5945f697dc0646c02fc"

  depends_on "php"
  depends_on "mp4v2"
  depends_on "varenc/ffmpeg/ffmpeg"
  depends_on "fdk-aac-encoder"
  
  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end
  
  test do
    assert_equal "m4b-tool v.0.4.0", shell_output("#{bin}/m4b-tool --version").chomp
  end

end
