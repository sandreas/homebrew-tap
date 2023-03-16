# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  version "pre-release"
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "https://github.com/sandreas/m4b-tool"
  url "https://github.com/sandreas/m4b-tool/files/10728378/m4b-tool.tar.gz"
  sha256 "181fb3e332849ea704ef860aaabaf9dcab2fdab298ffba99e66d31efa18b02f2"

  depends_on "php"
  depends_on "sandreas/tap/mp4v2"
  depends_on "fdk-aac-encoder"
  # depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => 'with-fdk-aac'

  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end

  test do
    assert_equal "m4b-tool v.#{version}", shell_output("#{bin}/m4b-tool --version").chomp
  end

end
