class Cogito < Formula
  desc 'Cogito allows you to define your AWS IAM policies using a smaller, easier-to-read format.'
  homepage 'https://github.com/localytics/libcogito'
  url 'https://github.com/localytics/libcogito', using: :git, tag: 'v0.1.0'
  version '0.1.0'
  sha256 'f5388e4867e1f20b6f7aa456ba09ce227ba486f4'

  depends_on 'libtool' => :build
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build

  def install
    system 'autoreconf', '-i'
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end
end
