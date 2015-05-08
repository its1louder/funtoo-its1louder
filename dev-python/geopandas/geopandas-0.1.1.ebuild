# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

#MY_PN="PySAL"
#MY_P="${MY_PN}-${PV}"

DESCRIPTION="An open source project to make working with geospatial data in python easier."
HOMEPAGE="http://geopandas.org/index.html"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/P/PySAL/${MY_P}.tar.gz"
#SRC_URI="https://pypi.python.org/packages/source/d/descartes/${P}.tar.gz"
SRC_URI="https://pypi.python.org/packages/source/g/geopandas/${P}.tar.gz"
#GITHUB_URI="github.com/geopandas/geopandas"

LICENSE="BSD"

SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
    dev-python/numpy
    dev-python/six
	dev-python/matplotlib
	sci-libs/Shapely
	sci-libs/Fiona
	dev-python/pandas
	dev-python/descartes
	dev-python/pySAL
	dev-python/geopy
	dev-python/psycopg"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${P}

python_test() {
    cd test || die
    ${PYTHON} run_all.py || die
}

