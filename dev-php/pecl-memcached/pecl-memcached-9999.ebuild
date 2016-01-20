# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PHP_EXT_NAME="memcached"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

USE_PHP="php7-0"

inherit php-ext-source-r2 git-r3 autotools

KEYWORDS=""

DESCRIPTION="Interface PHP with memcached via libmemcached library"
EGIT_REPO_URI="https://github.com/php-memcached-dev/php-memcached.git"
EGIT_BRANCH="php7"
LICENSE="PHP-3"
SLOT="0"
IUSE="+session json sasl"

DEPEND="|| ( >=dev-libs/libmemcached-1.0.14 >=dev-libs/libmemcached-1.0[sasl?] )
                sys-libs/zlib
                dev-lang/php:*[session?,json?]"
RDEPEND="${DEPEND}"

src_configure() {
	my_conf="--enable-memcached
		$(use_enable session memcached-session)
		$(use_enable sasl memcached-sasl)
		$(use_enable json memcached-json)"

	php-ext-source-r2_src_configure
}
