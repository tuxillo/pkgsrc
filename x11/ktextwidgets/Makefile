# $NetBSD: Makefile,v 1.12 2018/04/14 07:34:06 adam Exp $

DISTNAME=	ktextwidgets-${KF5VER}
PKGREVISION=	1
CATEGORIES=	x11

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	Advanced text editing widgets
LICENSE=	gnu-lgpl-v2 AND gnu-lgpl-v2.1

.include "../../meta-pkgs/kde/kf5.mk"

USE_TOOLS+=	msgmerge

.include "../../lang/python/tool.mk"
.include "../../devel/kservice/buildlink3.mk"
.include "../../graphics/kiconthemes/buildlink3.mk"
.include "../../textproc/kcompletion/buildlink3.mk"
.include "../../textproc/sonnet/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
