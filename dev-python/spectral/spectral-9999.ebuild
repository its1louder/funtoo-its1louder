# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1 git-r3

DESCRIPTION="a pure Python module for processing hyperspectral image data."
HOMEPAGE="http://www.spectralpython.net/index.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/spectralpython/spectral.git"
#"https://github.com/spectralpython/spectral.git"
EGIT_CHECKOUT_DIR="${WORKDIR}/spectral"
S="${WORKDIR}/spectral/${PN}"

LICENSE="BSD"

SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
>---dev-python/numpy
>---dev-python/matplotlib
>---dev-python/ipython
>---dev-python/wxpython
>---dev-python/pyopengl
>---dev-python/pillow"
DEPEND="${RDEPEND}"



######################3

#KEYWORDS="~amd64"
#IUSE=""
#REQUIRED_USE="${PYTHON_REQUIRED_USE}"
#
#DEPEND="${PYTHON_DEPS}"
#RDEPEND="${DEPEND}"

