# $NetBSD: Makefile,v 1.44 2018/04/29 21:32:07 adam Exp $

DISTNAME=	WWW-Curl-4.17
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	10
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=WWW/}

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://search.cpan.org/dist/WWW-Curl/
COMMENT=	Perl binding interface for curl
LICENSE=	mit

BUILDLINK_API_DEPENDS.curl+=	curl>=7.10.8
CFLAGS=	-Wall -Werror -Wreturn-type

MAKE_ENV+=	PERL_USE_UNSAFE_INC=1
PERL5_PACKLIST=	auto/WWW/Curl/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

# for make test	(t/meta.t . skipped: .... for testing META.yml)
BUILD_DEPENDS+=	p5-Test-CPAN-Meta-[0-9]*:../../devel/p5-Test-CPAN-Meta

.include "../../www/curl/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
