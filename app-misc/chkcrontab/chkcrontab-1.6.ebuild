# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="A tool to detect crontab errors"
HOMEPAGE="https://github.com/lyda/chkcrontab"
SRC_URI="https://github.com/lyda/chkcrontab/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

python_test() {
	esetup.py test
}
