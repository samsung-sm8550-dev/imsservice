.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;
.super Ljava/lang/Object;
.source "XAAEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XAAEntitlementOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .locals 2

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    goto :goto_0

    :cond_2
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    :goto_0
    return v1
.end method

.method protected static getNextOperation(IIIZ)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZ)I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 3

    .line 16
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string v0, "loc_and_tc_status"

    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 25
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getInitialOperation(II)I

    move-result p0

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p1, p0, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getNextOperation(IIIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZ)I
    .locals 2

    .line 0
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    if-eq p0, v0, :cond_1

    const/4 p2, 0x5

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p0, 0xd

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    const/16 p0, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
