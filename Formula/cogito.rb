class Cogito < Formula
  desc 'Cogito allows you to define your AWS IAM policies using a smaller, easier-to-read format.'
  homepage 'https://github.com/localytics/libcogito'
  url 'https://github.com/localytics/libcogito', using: :git, tag: 'v0.0.1'
  version '0.0.1'
  sha256 '1d2c8da664317a9b593dbc7ec0e28b4646b17954cbe8577f9beb23767e8e712b'

  depends_on 'libtool' => :build
  depends_on 'automake' => :build
  depends_on 'autoconf' => :build

  def install
    system 'pwd'
    system 'autoreconf', '-i'
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end
end
