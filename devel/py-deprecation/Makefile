# $NetBSD: Makefile,v 1.5 2018/04/14 08:46:28 adam Exp $

DISTNAME=	deprecation-2.0.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=d/deprecation/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://deprecation.readthedocs.io/
COMMENT=	Library to handle automated deprecations
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-packaging-[0-9]*:../../devel/py-packaging

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
