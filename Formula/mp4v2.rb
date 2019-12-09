# brew tap sandreas/tap
# brew install m4b-tool
class M4bTool < Formula
  desc "Read, create, and modify MP4 files"
  homepage "https://github.com/sandreas/m4b-tool"
  url "https://github.com/sandreas/mp4v2/tarball/master"
  sha256 "7fdb74872b52aa21f284304962d30dc9b15cd06849295ae42ae867746bb5ff64"

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    system "make", "install-man"
  end

  test do
    assert_match "mp4tags - MP4v2 -r", shell_output("#{bin}/mp4art --version")
  end

end
