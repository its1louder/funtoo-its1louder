# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
<<<<<<< HEAD

PYTHON_COMPAT=(  python3_{4,5,6,7,8} )
inherit distutils-r1

DESCRIPTION="Multi-user server for Jupyter notebooks"
#HOMEPAGE="https://jupyterhub.readthedocs.io"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/jupyterhub/jupyterhub"
SRC_URI="https://github.com/jupyterhub/jupyterhub/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="doc ldapauthenticator"

RESTRICT=network-sandbox
=======
# Not compatible with pre- python 3.6 due to async_generators
PYTHON_COMPAT=(  python3_{6,7} )
inherit distutils-r1

DESCRIPTION="Multi-user server for Jupyter notebooks"
HOMEPAGE="https://jupyterhub.readthedocs.io"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
#echo $SRC_URI



LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="doc test"
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d

DEPEND="
	net-libs/nodejs
	dev-python/alembic[${PYTHON_USEDEP}]
<<<<<<< HEAD
	>=dev-python/async_generator-1.8[${PYTHON_USEDEP}]
	>=dev-python/certipy-0.1.2[${PYTHON_USEDEP}]
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/jupyter-telemetry[${PYTHON_USEDEP}] 
	dev-python/python-oauth2[${PYTHON_USEDEP}]
=======
	>=dev-python/certipy-0.1.2[${PYTHON_USEDEP}]
	dev-python/entrypoints[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	>=dev-python/oauthlib-3[${PYTHON_USEDEP}]
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d
	dev-python/pamela[${PYTHON_USEDEP}]
	>=dev-python/prometheus_client-0.0.21[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-1.1[${PYTHON_USEDEP}]
	>=www-servers/tornado-5.0[${PYTHON_USEDEP}]
	>=dev-python/traitlets-4.3.2[${PYTHON_USEDEP}]
	doc? (
		>=dev-python/sphinx-1.3.6[${PYTHON_USEDEP}]
		dev-python/alabaster[${PYTHON_USEDEP}]
		dev-python/sphinx-copybutton[${PYTHON_USEDEP}]
<<<<<<< HEAD
		dev-python/recommonmark[${PYTHON_USEDEP}]   
		)
	ldapauthenticator? ( dev-python/jupyterhub-ldapauthenticator[${PYTHON_USEDEP}] )
=======
		dev-python/recommonmark[${PYTHON_USEDEP}]
		)
	test? (
		dev-python/pytest-asyncio[${PYTHON_USEDEP}]
		)
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d
"

RDEPEND="${DEPEND}"
#BDEPEND=""

<<<<<<< HEAD

src_prepare() {
        einfo
	einfo 'Note, allowing network access from the sandbox via RESTRICT=network-sandbox'
        einfo '(needed for building jupyterhub assets via npm)'
        einfo
	distutils-r1_src_prepare
}

python_compile() {
	distutils-r1_python_compile
}

python_install() {
	distutils-r1_python_install --skip-build
}

python_install_all() {
	distutils-r1_python_install_all
=======
python_test() {
	esetup.py test
>>>>>>> ed6b1a975c8dd1153235fdda5253753948d3695d
}
