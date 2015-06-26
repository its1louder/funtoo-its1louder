# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
PYTHON_depend="2:2.6"
SUPPORT_PYTHON_ABIS=1
RESTRICT_PYTHON_ABIS="3.* *-jython *-pypy-*"
inherit distutils

DESCRIPTION="A dictionary that supports attribute-style access, a la JavaScript"
HOMEPAGE="http://pypi.python.org/pypi/bunch http://github.com/dsc/bunch/"
#:qhttps://pypi.python.org/packages/source/b/bunch/bunch-1.0.1.tar.gz#md5=0a829d64e95ed96defbcae2bf9061bb0
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

KEYWORDS="~amd64"
IUSE="doc"
LICENSE="MIT"
SLOT="0"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"

src_test() {
	testing() {
		local exit_status=0
		PYTHONPATH=. "$(PYTHON)" -d ${PN}/test.py || exit_status=1
		einfo testing completed by python${PYTHON_ABI}
		return $exit_status
	}
	python_execute_function testing
}

