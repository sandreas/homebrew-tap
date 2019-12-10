# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  version "0.4.2"
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "https://github.com/sandreas/m4b-tool"
  url "https://github.com/sandreas/m4b-tool/releases/download/v.#{version}/m4b-tool.tar.gz"
  sha256 "0ec79733770379dbd11ea9d76fd03d62d8aacca8e66730779f7caaa92f577ba7"

  depends_on "php"
  depends_on "sandreas/tap/mp4v2"
  depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => 'with-fdk-aac'
  depends_on "fdk-aac-encoder"

  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end

  test do
    assert_equal "m4b-tool v.#{version}", shell_output("#{bin}/m4b-tool --version").chomp
  end

end
