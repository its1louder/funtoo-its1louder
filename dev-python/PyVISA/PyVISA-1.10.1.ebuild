# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python{3_4,3_5,3_6,3_7} )
inherit distutils-r1

DESCRIPTION="Python VISA bindings for GPIB, RS232, and USB instruments"
HOMEPAGE="https://github.com/hgrecco/pyvisa"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="test"

RDEPEND="
	$(python_gen_cond_dep 'dev-python/enum34[${PYTHON_USEDEP}]' python2_7)
	"
DEPEND="${RDEPEND}"

python_test() {
	esetup.py test
}
