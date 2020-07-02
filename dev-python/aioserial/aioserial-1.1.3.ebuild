# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(  python3_{6,7} )
inherit distutils-r1

DESCRIPTION="pyserial-asyncio for humans"
HOMEPAGE="https://github.com/changyuheng/aioserial"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
#echo $SRC_URI


LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="doc test"

DEPEND="
	dev-python/pyserial[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
#BDEPEND=""

#python_test() {
#	esetup.py test
