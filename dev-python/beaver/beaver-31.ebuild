# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

MY_PN="Beaver"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="python daemon that munches on logs and sends their contents to logstash"
HOMEPAGE="https://github.com/josegonzalez/beaver"
SRC_URI="http://pypi.python.org/packages/source/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/conf_d
 dev-python/glob2
 dev-python/msgpack
 dev-python/python-daemon"
RDEPEND=""

S=${WORKDIR}/${MY_P}
