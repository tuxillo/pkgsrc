# $NetBSD: Makefile,v 1.8 2018/04/05 10:29:31 jperkin Exp $

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${R_HOMEPAGE_BASE}/Rcpp/
COMMENT=	Seamless R and C++ Integration
LICENSE=	gnu-gpl-v2

R_PKGNAME=	Rcpp
R_PKGVER=	0.12.15

USE_LANGUAGES+=	c++

REPLACE_R+=		inst/examples/*/*.r
REPLACE_R+=		inst/examples/SugarPerformance/sugarBenchmarks.R \
			inst/unitTests/runit.Date.R

REPLACE_RSCRIPT+=	inst/discovery/cxx0x.R

REPLACE_SH+=		inst/examples/ConvolveBenchmarks/buildAndRun.sh
REPLACE_SH+=		inst/examples/ConvolveBenchmarks/overhead.sh

REPLACE_INTERPRETER+=	R
REPLACE.R.old=		/usr/bin/env r
REPLACE.R.new=		${PREFIX}/bin/R
REPLACE_FILES.R=	${REPLACE_R}

REPLACE_INTERPRETER+=	Rscript
REPLACE.Rscript.old=	.*Rscript
REPLACE.Rscript.new=	${PREFIX}/bin/Rscript
REPLACE_FILES.Rscript=	${REPLACE_RSCRIPT}

CHECK_SSP_SKIP+=	lib/R/library/Rcpp/unitTests/bin/*/*.deb

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
