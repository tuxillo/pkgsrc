# $NetBSD: buildlink3.mk,v 1.9 2018/03/12 11:15:49 wiz Exp $

BUILDLINK_TREE+=	elementary

.if !defined(ELEMENTARY_BUILDLINK3_MK)
ELEMENTARY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.elementary+=	elementary>=1.7.7
BUILDLINK_ABI_DEPENDS.elementary?=	elementary>=1.7.7nb11
BUILDLINK_PKGSRCDIR.elementary?=	../../x11/elementary

.include "../../devel/ecore/buildlink3.mk"
.include "../../graphics/edje/buildlink3.mk"
.include "../../sysutils/edbus/buildlink3.mk"
.include "../../sysutils/efreet/buildlink3.mk"
.include "../../devel/eet/buildlink3.mk"
.include "../../graphics/evas-png/buildlink3.mk"
.include "../../graphics/evas-jpeg/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../devel/eio/buildlink3.mk"
.endif	# ELEMENTARY_BUILDLINK3_MK

BUILDLINK_TREE+=	-elementary
