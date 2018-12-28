# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "m4b-tool.fynder.de"
  url "https://github.com/sandreas/m4b-tool/releases/download/v.0.3.1/m4b-tool.tar.gz"
  sha256 "91c0ed60fa240c5cd4faf642d5352b3bdde48bde6af746debff734601c47a393"

  depends_on "php"
  depends_on "mp4v2"
  depends_on "ffmpeg" => ["with-chromaprint", "with-fdk-aac", "with-freetype", "with-libass", "with-sdl2", "with-freetype", "with-libquvi", "with-libvorbis", "with-libquvi", "with-libvpx", "with-opus", "with-x265"]
  depends_on "fdk-aac-encoder"
  
  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end
  
  test do
    assert_equal "m4b-tool v.0.3.1", shell_output("#{bin}/m4b-tool --version").chomp
  end

end
