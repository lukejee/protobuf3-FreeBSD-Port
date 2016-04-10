# Created by: vanilla
# $FreeBSD: head/devel/protobuf/Makefile 385821 2015-05-08 20:22:04Z sunpoet $

PORTNAME=	protobuf
PORTVERSION=	3.0.0
DISTVERSIONPREFIX=	v
CATEGORIES=	devel

# release 以后要删除
MASTER_SITES= https://github.com/google/protobuf/releases/download/v3.0.0-beta-2/
DISTNAME= protobuf-3.0.0-beta-2
DISTFILES= protobuf-cpp-3.0.0-beta-2.tar.gz


MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Data interchange format library

LICENSE=	BSD3CLAUSE

CFLAGS+=	-DGOOGLE_PROTOBUF_NO_RTTI
GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
ONLY_FOR_ARCHS=	amd64 armv6 i386
#PATHFIX_MAKEFILEIN=	Makefile.am
USE_CSTD=	c99	# for audio/clementine-player support
USE_LDCONFIG=	yes
USES=		autoreconf gmake libtool pathfix pkgconfig tar:bzip2

#GH_ACCOUNT=	google
#USE_GITHUB= yes


.include <bsd.port.mk>
