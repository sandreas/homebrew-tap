# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  version "0.5.2"
  desc "m4b-tool is a command line utility to merge, split and chapterize audiobook files such as mp3, ogg, flac, m4a or m4b"
  homepage "https://github.com/sandreas/m4b-tool"
  url "https://github.com/sandreas/m4b-tool/releases/download/v0.5.2/m4b-tool-0.5.2.tar.gz"
  sha256 "569e071585edf29aa404cb6ec537bca0daaa261c3c96fe48188801d700a19fe0"

  depends_on "php"
  depends_on "mp4v2"
  depends_on "fdk-aac-encoder"
  # depends_on "homebrew-ffmpeg/ffmpeg/ffmpeg" => 'with-fdk-aac'

  def install
    bin.install "m4b-tool.phar" => "m4b-tool"
  end

  test do
    assert_equal "m4b-tool v.#{version}", shell_output("#{bin}/m4b-tool --version").chomp
  end
end
