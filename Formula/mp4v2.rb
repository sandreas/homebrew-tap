# to tap run: brew tap sandreas/tap
# to install run: brew install sandreas/tap/mp4v2
# to test locally run: brew install --build-from-source ./mp4v2.rb
class Mp4v2 < Formula
  version "4.1.0"
  desc "Read, create, and modify MP4 files"
  homepage "https://github.com/sandreas/mp4v2"
  url "https://github.com/sandreas/mp4v2/tarball/master"
  sha256 "09e5342d1f19523641ce3c3ea7e8a7158af54b731dde7c595e5e11231c9f59fc"

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
