# $NetBSD: Makefile,v 1.15 2018/04/12 07:11:00 maya Exp $

DISTNAME=	streamlink-0.11.0
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=streamlink/}
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://streamlink.github.io/
COMMENT=	Tool that pipes video streams into a video player
LICENSE=	2-clause-bsd


PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"

DEPENDS+=	${PYPKGPREFIX}-cryptodome>=3.4.3:../../security/py-cryptodome
DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-iso-639-[0-9]*:../../devel/py-iso-639
DEPENDS+=	${PYPKGPREFIX}-iso3166-[0-9]*:../../devel/py-iso3166
DEPENDS+=	${PYPKGPREFIX}-websocket-client-[0-9]*:../../www/py-websocket-client

EGG_NAME=	${PKGNAME_NOREV}

REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/flv.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/tag.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/__init__.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/packet.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/error.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/f4v.py
REPLACE_PYTHON+=	src/streamlink/packages/flashmedia/util.py
REPLACE_PYTHON+=	src/streamlink/plugins/tv3cat.py
REPLACE_PYTHON+=	src/streamlink/plugins/tvplayer.py

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
