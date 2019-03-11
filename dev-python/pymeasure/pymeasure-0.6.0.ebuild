# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

##EAPI=7
#EAPI=6
EAPI=5 

PYTHON_COMPAT=( python3_6 )
AUTHOR=ralph-group

DESCRIPTION="Scientific measurement library for instruments, experiments, and live-plotting"
HOMEPAGE="https://github.com/ralph-group/pymeasure"
#PyMeasure-0.6.0.tar.gz
SRC_URI="https://github.com/ralph-group/pymeasure/archive/v0.6.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
#SRC_URI="https://github.com/${AUTHOR}/${PN}/tarball/${PV} -> ${P}.tar.gz"
#SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT License
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="doc examples test"

DEPEND="
	>=dev-python/numpy-1.8.1
	>=dev-python/pandas-0.19.2
	>=dev-python/pyserial-2.7
	>=dev-python/python-dateutil-2.6.0
	>=dev-python/pytz-2017.2
	>=dev-python/setuptools-27.3.0
	>=dev-python/sip-4.18
	>=dev-python/six-1.10.0
	>=dev-python/wheel-0.29.0
	>=dev-python/PyVISA-1.8
	>=dev-python/PyVISA-py-0.2
	>=dev-python/PyQt5-5.6.0
	>=dev-python/pyqtgraph-0.10.0
"

RDEPEND="${DEPEND}"

#BDEPEND=""

S="${WORKDIR}"/${PN}-0.6

