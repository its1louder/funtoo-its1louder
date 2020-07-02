# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(  python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="Multi-user server for Jupyter notebooks"
HOMEPAGE="https://jupyterhub.readthedocs.io"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
#echo $SRC_URI



LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="doc"  
#test"

DEPEND="
	net-libs/nodejs
	doc? (
		>=dev-python/sphinx-1.3.6[${PYTHON_USEDEP}]
		)
"

RDEPEND="${DEPEND}"
#BDEPEND=""

#python_test() {
#	esetup.py test
#}
