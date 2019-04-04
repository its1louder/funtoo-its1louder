# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="OAuth 2.0 provider written in python"
HOMEPAGE="https://pypi.org/project/python-oauth2/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
#IUSE=""

DEPEND="
	dev-python/mock[${PYTHON_USEDEP}]
	dev-python/nose[${PYTHON_USEDEP}]
	dev-python/pymongo[${PYTHON_USEDEP}]
	dev-python/python-memcached[${PYTHON_USEDEP}]
	dev-python/redis-py[${PYTHON_USEDEP}]
	www-servers/tornado[${PYTHON_USEDEP}]
	>=dev-python/mysql-connector-python-1.1.7[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
#BDEPEND=""
