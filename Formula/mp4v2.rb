class Mp4v2 < Formula
  desc "Read, create, and modify MP4 files"
  homepage "https://github.com/sandreas/m4b-tool"
  url "https://github.com/sandreas/mp4v2/tarball/master"
  sha256 "7fdb74872b52aa21f284304962d30dc9b15cd06849295ae42ae867746bb5ff64"


  conflicts_with "bento4",
    :because => "both install `mp4extract` and `mp4info` binaries"

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    system "make", "install-man"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mp4art --version")
  end
end
