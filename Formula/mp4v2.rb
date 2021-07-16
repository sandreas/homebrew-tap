# to tap run: brew tap sandreas/tap
# to install run: brew install sandreas/tap/mp4v2
# to test locally run: brew install --build-from-source ./mp4v2.rb
class Mp4v2 < Formula
  version "4.1.0"
  desc "Read, create, and modify MP4 files"
  homepage "https://github.com/sandreas/mp4v2"
  url "https://github.com/sandreas/mp4v2/tarball/master"
  sha256 "a878f352122fa84b9cd506603a703e2ab7ae19240f34fe9c0931bfc25003eb53"

  conflicts_with "bento4",
    :because => "both install `mp4extract` and `mp4info` binaries"

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    system "make", "install-man"
  end

  test do
    assert_match "mp4tags - MP4v2 -r", shell_output("#{bin}/mp4art --version").chomp
  end

end
