# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PHP_EXT_NAME="libsmbclient"
USE_PHP="php5-6 php5-5 php5-4"

inherit php-ext-source-r2 eutils

DESCRIPTION="PHP wrapper for libsmbclient"
HOMEPAGE="https://github.com/eduardok/libsmbclient-php"
SRC_URI="https://github.com/eduardok/libsmbclient-php/archive/0.7.0.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="net-fs/samba[smbclient]"
