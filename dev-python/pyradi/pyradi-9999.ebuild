# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="A Python toolkit to perform optical and infrared computational radiometry"
HOMEPAGE="https://github.com/NelisW/pyradi"
#SRC_URI=""

GITHUB_REPOSITORY="NelisW/pyradi"
#GITHUB_REF=""

inherit git-r3
EGIT_REPO_URI="https://github.com/${GITHUB_REPOSITORY}"
#EGIT_BRANCH="${GITHUB_REF}"

LICENSE="Mozilla Public License 1.1"

SLOT="0"
KEYWORDS="*"
IUSE="test"
RDEPEND="
	dev-python/numpy
	dev-python/matplotlib
	sci-libs/scipy"

DEPEND="${RDEPEND}"

S="${WORKDIR}"/${P}

python_test() {
	cd test || die
	${PYTHON} run_all.py || die
}

