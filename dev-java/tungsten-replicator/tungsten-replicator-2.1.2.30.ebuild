# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit versionator

MY_PV="2.1.2-30"
MY_P=${PN}-${MY_PV}

DESCRIPTION="Tungsten Replicator is a high performance, open source, data replication engine for MySQL"
HOMEPAGE="http://code.google.com/p/tungsten-replicator/"
SRC_URI="http://tungsten-replicator.googlecode.com/files/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="installer"

DEPEND=">=virtual/jdk-1.6
 >=dev-lang/ruby-1.8.5[ssl]
 app-arch/tar
 net-misc/rsync
 virtual/mysql"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

pkg_setup() {
	enewgroup tungsten
	enewuser tungsten -1 /bin/bash /var/lib/tungsten mysql
}

src_install() {
	keepdir /opt/tungsten /var/lib/tungsten
	
	if use installer; then
	  dodir /opt/tungsten/_installer
	  mv * "${D}/opt/tungsten/_installer"
	fi

	fowners -R tungsten:mysql "/opt/tungsten" "/var/lib/tungsten"
	fperms 0770 "/opt/tungsten" "/var/lib/tungsten"

	newinitd "${FILESDIR}/tungsten.initd" tungsten
	newconfd "${FILESDIR}/tungsten.confd" tungsten
}
