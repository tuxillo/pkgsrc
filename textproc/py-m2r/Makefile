# $NetBSD: Makefile,v 1.10 2018/03/23 12:08:52 adam Exp $

DISTNAME=	m2r-0.1.14
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/m2r/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/miyakogi/m2r
COMMENT=	Markdown to reStructuredText converter
LICENSE=	mit

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-docutils-[0-9]*:../../textproc/py-docutils
DEPENDS+=	${PYPKGPREFIX}-mistune-[0-9]*:../../textproc/py-mistune
TEST_DEPENDS+=	${PYPKGPREFIX}-pygments-[0-9]*:../../textproc/py-pygments

post-install:
	cd ${DESTDIR}${PREFIX}/bin && ${MV} m2r m2r${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
