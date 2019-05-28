class Cogito < Formula
  desc 'Cogito allows you to define your AWS IAM policies using a smaller, easier-to-read format.'
  homepage 'https://cogito-lang.github.io'

  url 'https://github.com/cogito-lang/libcogito', using: :git, tag: 'v0.2.0'
  version '0.2.0'
  sha256 'c6afeaab51ba6101d692654545e543122ad3e77f'

  depends_on 'libtool' => :build
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build
  depends_on 'pkg-config' => :build
  depends_on 'check' => :build

  def install
    system 'autoreconf', '-i'
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end
end
