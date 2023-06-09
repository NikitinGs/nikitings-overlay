EAPI=8

DESCRIPTION="Little program that simulates a lava lamp in the terminal."
HOMEPAGE="https://github.com/AngelJumbo/lavat"
SRC_URI="https://github.com/AngelJumbo/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	emake \
		PREFIX="${EPREFIX}/usr" \
		DESTDIR="${D}" \
		install \
		|| die "make install failed"
}
