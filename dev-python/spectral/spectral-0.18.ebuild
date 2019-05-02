# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

#MY_PN="PySAL"
#MY_P="${MY_PN}-${PV}"

DESCRIPTION="a pure Python module for processing hyperspectral image data."
HOMEPAGE="http://www.spectralpython.net/index.html"
SRC_URI="https://pypi.python.org/packages/source/s/spectral/${P}.tar.gz"

LICENSE="BSD"

SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	dev-python/numpy
	dev-python/matplotlib
	dev-python/ipython
	dev-python/wxpython
	dev-python/pyopengl
	dev-python/pillow"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${P}

python_test() {
    cd test || die
    ${PYTHON} run_all.py || die
}

