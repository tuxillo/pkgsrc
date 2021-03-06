# $NetBSD: Makefile,v 1.4 2018/02/25 01:15:03 minskim Exp $

DISTNAME=			cookiecutter-1.6.0
GITHUB_PROJECT=			cookiecutter
PKGNAME=			${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=			devel
MASTER_SITES=			${MASTER_SITE_GITHUB:=audreyr/}

MAINTAINER=			gde@llew.me
HOMEPAGE=			https://github.com/audreyr/cookiecutter/
COMMENT=			Command-line utility that creates projects from project templates
LICENSE=			modified-bsd

USE_LANGUAGES=			# none
USE_TOOLS+=			make:build
AUTO_MKDIRS=			yes
INSTALLATION_DIRS+=		${PKGMANDIR}/man1/

BUILD_DEPENDS+=			${PYPKGPREFIX}-sphinx>=1.2.3nb1:../../textproc/py-sphinx
BUILD_DEPENDS+=			${PYPKGPREFIX}-chardet>=2.3.0:../../converters/py-chardet
BUILD_DEPENDS+=			${PYPKGPREFIX}-test>=2.3.0:../../devel/py-test
DEPENDS+=			${PYPKGPREFIX}-future>=0.15.2:../../devel/py-future
DEPENDS+=			${PYPKGPREFIX}-binaryornot>=0.2.0:../../devel/py-binaryornot
DEPENDS+=			${PYPKGPREFIX}-jinja2>=2.7:../../textproc/py-jinja2
DEPENDS+=			${PYPKGPREFIX}-jinja2-time>=0.1:../../time/py-jinja2-time
DEPENDS+=			${PYPKGPREFIX}-click>=6.3:../../devel/py-click
DEPENDS+=			${PYPKGPREFIX}-whichcraft>=0.4.0:../../devel/py-whichcraft
DEPENDS+=			${PYPKGPREFIX}-poyo>=0.1.0:../../textproc/py-poyo
DEPENDS+=			${PYPKGPREFIX}-requests>=2.18.0:../../devel/py-requests

# for python < 3.0
.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} < 30
DEPENDS+=			${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
.endif

REPLACE_PYTHON+=		setup.py
REPLACE_PYTHON+=		cookiecutter/*.py

WRKSRC=				${WRKDIR}/${DISTNAME}

post-build:
	cd ${WRKSRC}/docs/ && make SPHINXBUILD=${PREFIX}/bin/sphinx-build${PYVERSSUFFIX} man

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/_build/man/cookiecutter.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
