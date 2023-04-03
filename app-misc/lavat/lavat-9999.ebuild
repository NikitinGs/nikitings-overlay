EAPI=8

DESCRIPTION="Little program that simulates a lava lamp in the terminal."
HOMEPAGE="https://github.com/AngelJumbo/lavat"
EGIT_REPO_URI="https://github.com/AngelJumbo/${PN}.git"

inherit git-r3

LICENSE="MIT"
SLOT="0"

src_install() {
	emake \
		PREFIX="${EPREFIX}/usr" \
		DESTDIR="${D}" \
		install \
		|| die "make install failed"
}
