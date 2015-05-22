# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils
#-r1

#MY_PN="PySAL"
#MY_P="${MY_PN}-${PV}"

DESCRIPTION="Use Shapely or GeoJSON-like geometric objects as matplotlib paths and patches."
HOMEPAGE="http://bitbucket.org/sgillies/descartes/"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/P/PySAL/${MY_P}.tar.gz"
SRC_URI="https://pypi.python.org/packages/source/d/descartes/${P}.tar.gz"
LICENSE="BSD"

SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
    dev-python/numpy
    sci-libs/scipy
	dev-python/matplotlib
	sci-libs/Shapely"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${P}

python_test() {
    cd test || die
    ${PYTHON} run_all.py || die
}

