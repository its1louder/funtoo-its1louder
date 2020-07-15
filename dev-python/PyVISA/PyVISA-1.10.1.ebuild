# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

<<<<<<< HEAD
PYTHON_COMPAT=( python3_{5,6,7,8} )
=======
PYTHON_COMPAT=(python{3_4,3_5,3_6,3_7} )
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d
inherit distutils-r1

DESCRIPTION="Python VISA bindings for GPIB, RS232, and USB instruments"
HOMEPAGE="https://github.com/hgrecco/pyvisa"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
<<<<<<< HEAD
KEYWORDS="~amd64 ~x86"
=======
KEYWORDS="~amd64 ~x86 ~arm64"
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d
IUSE="test"

RDEPEND="
	$(python_gen_cond_dep 'dev-python/enum34[${PYTHON_USEDEP}]' python2_7)
	"
DEPEND="${RDEPEND}"

python_test() {
	esetup.py test
}
