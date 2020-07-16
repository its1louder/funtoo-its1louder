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

SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="doc examples test"

DEPEND="
	>=dev-python/numpy-1.8.1[${PYTHON_USEDEP}]
	>=dev-python/pandas-0.19.2[${PYTHON_USEDEP}]
	>=dev-python/pyserial-2.7[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.6.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2017.2[${PYTHON_USEDEP}]
	>=dev-python/setuptools-27.3.0[${PYTHON_USEDEP}]
	>=dev-python/sip-4.18[${PYTHON_USEDEP}]
	>=dev-python/six-1.10.0[${PYTHON_USEDEP}]
	>=dev-python/wheel-0.29.0[${PYTHON_USEDEP}]
	>=dev-python/PyVISA-1.8[${PYTHON_USEDEP}]
	>=dev-python/PyVISA-py-0.2[${PYTHON_USEDEP}]
	>=dev-python/PyQt5-5.6.0[${PYTHON_USEDEP}]
	>=dev-python/pyqtgraph-0.10.0[${PYTHON_USEDEP}]
	dev-python/pytest-runner[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"

#BDEPEND=""

S="${WORKDIR}"/${MY_PN}-${PV}
#S="${WORKDIR}/${PN}"

