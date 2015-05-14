class Pacapt < Formula
  homepage "https://github.com/icy/pacapt"
  url "https://github.com/icy/pacapt.git",
    :revision => "a7c5d2280c5e75a43efe67b937e327c32084c75e",
    :tag => "v2.0.4"

  bottle do
    cellar :any
    sha256 "6ddfadf6010ce7caace02875e5fbd63777febfc3c4902ebe1d1e6c878af81cbb" => :yosemite
    sha256 "1bef258671dfe35071155f5a22d1e95fb4f10ab0cf54d11a8e95c1108e16f404" => :mavericks
    sha256 "b4fd2b945a12952653ea3bcfa70bbe60910b81ed890283531d217ff33a4ce812" => :mountain_lion
  end

  def install
    bin.mkpath
    system "make", "install", "BINDIR=#{bin} VERSION=v2.0.4"
  end

  test do
    system "#{bin}/pacapt", "-Ss", "wget"
  end
end
