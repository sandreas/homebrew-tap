# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "m4b-tool.fynder.de"
  url "https://github.com/sandreas/m4b-tool/releases/download/v.0.4.1/m4b-tool.tar.gz"
  sha256 "ceb3f14619e064504e2a99f5f3ac08d9447de32a1232af7a44b3c4241c722f9c"

  depends_on "php"
  depends_on "mp4v2"
  depends_on "varenc/ffmpeg/ffmpeg"
  depends_on "fdk-aac-encoder"
  
  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end
  
  test do
    assert_equal "m4b-tool v.0.4.1", shell_output("#{bin}/m4b-tool --version").chomp
  end

end
