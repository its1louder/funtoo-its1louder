# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{3,4,5,6} )
inherit distutils-r1

DESCRIPTION="Wraps pyOpenSSL for quick and easy PKI"
HOMEPAGE="https://github.com/LLNL/certipy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"

DEPEND="
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

