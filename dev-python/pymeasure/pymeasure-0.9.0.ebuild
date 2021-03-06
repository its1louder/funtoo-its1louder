# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

AUTHOR=ralph-group
MY_PN=PyMeasure
MY_P=${MY_PN}-${PV}

DESCRIPTION="Scientific measurement library for instruments, experiments, and live-plotting"
HOMEPAGE="https://github.com/ralph-group/pymeasure"

#SRC_URI="https://github.com/${AUTHOR}/pymeasure/archive/${PV}.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${PN}/${PN}/archive/${MY_P}.tar.gz -> ${P}.tar.gz"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/archive/v${PV:0:2}.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/archive/v0.6.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/tarball/${PV} -> ${P}.tar.gz"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
echo ${SRC_URI} 

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="doc examples test"

DEPEND="
	>=dev-python/numpy-1.19.2[${PYTHON_USEDEP}]
	>=dev-python/pandas-1.1.3[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.4[${PYTHON_USEDEP}]
	>=dev-python/PyVISA-1.10.1[${PYTHON_USEDEP}]
	>=dev-python/PyVISA-py-0.2[${PYTHON_USEDEP}]
	>=dev-python/PyQt5-5.12.3[${PYTHON_USEDEP}]
	>=dev-python/pyqtgraph-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/pyzmq-22.0.3[${PYTHON_USEDEP}]
	>=dev-python/cloudpickle-1.6.0[${PYTHON_USEDEP}]
"

RDEPEND="
	>=dev-qt/qtcore-5.12.9
"

#BDEPEND=""

S="${WORKDIR}"/${MY_PN}-${PV}
#S="${WORKDIR}/${PN}"
echo ${S}
