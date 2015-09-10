# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

#MY_PN="PySAL"
#MY_P="${MY_PN}-${PV}"

DESCRIPTION="Python utilities for radiometry (flux flow) calculations, supporting electro-optical and infrared system design."
HOMEPAGE="http://nelisw.github.io/pyradi-docs/_build/html/"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/P/PySAL/${MY_P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/d/descartes/${P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/g/geopandas/${P}.tar.gz"
#https://pypi.python.org/packages/source/p/pyradi/pyradi-0.1.58.zip
SRC_URI="https://pypi.python.org/packages/source/p/pyradi/${P}.zip"

#GITHUB_URI="github.com/geopandas/geopandas"

LICENSE="Mozilla Public License 1.1"

SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	dev-python/numpy
	dev-python/matplotlib
	dev-python/scipy
	sci-visualization/mayavi"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${P}

python_test() {
    cd test || die
    ${PYTHON} run_all.py || die
}

