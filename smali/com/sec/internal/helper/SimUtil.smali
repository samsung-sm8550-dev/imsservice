.class public Lcom/sec/internal/helper/SimUtil;
.super Ljava/lang/Object;
.source "SimUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimUtil"

.field private static sActiveDataPhoneId:I

.field private static final sMnoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/Mno;",
            ">;"
        }
    .end annotation
.end field

.field private static sPhoneCount:I

.field private static sSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$H4_ioWHyRR229mryZnccJ0Kc16s(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/SimUtil;->lambda$getSimMnoAsNwPlmn$0(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveDataPhoneId()I
    .locals 1

    .line 90
    sget v0, Lcom/sec/internal/helper/SimUtil;->sActiveDataPhoneId:I

    return v0
.end method

.method public static getActiveDataPhoneIdFromTelephony()I
    .locals 1

    .line 401
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static getActiveDataSubscriptionId()I
    .locals 1

    .line 397
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 4

    const-string/jumbo v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    .line 128
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 132
    invoke-static {p0, v1}, Lcom/sec/internal/helper/SimUtil;->isSimActive(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activeSimCount= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v0
.end method

.method public static getActiveSubInfoCount()I
    .locals 1

    .line 418
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 421
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static getAvailableSimCount()I
    .locals 4

    const-string/jumbo v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableSim = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SimUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2
.end method

.method public static getConfigDualIMS()Ljava/lang/String;
    .locals 2

    .line 98
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string v0, "SINGLE"

    return-object v0

    .line 102
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DSDA_DI"

    goto :goto_0

    :cond_1
    const-string v0, "DSDS_DI"

    :goto_0
    return-object v0
.end method

.method public static getMno()Lcom/sec/internal/constants/Mno;
    .locals 2

    .line 341
    sget v0, Lcom/sec/internal/helper/SimUtil;->sActiveDataPhoneId:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0
.end method

.method public static getMno(I)Lcom/sec/internal/constants/Mno;
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-static {p0, v0}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method private static getMno(IZ)Lcom/sec/internal/constants/Mno;
    .locals 2

    .line 366
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 371
    :cond_0
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/Mno;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "SimUtil"

    const-string v0, "fail to get mno from map"

    .line 377
    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    :goto_0
    return-object v0
.end method

.method public static getMvnoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 410
    sget-char v0, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getOppositeSimSlot(I)I
    .locals 1

    .line 385
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p0, v0, :cond_0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :cond_0
    return v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 82
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    return v0
.end method

.method public static getSimMno(I)Lcom/sec/internal/constants/Mno;
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-static {p0, v0}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public static getSimMnoAsNwPlmn(I)Lcom/sec/internal/constants/Mno;
    .locals 2

    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    .line 425
    invoke-static {v0, p0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public static getSimSlotPriority()I
    .locals 5

    .line 43
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "SimUtil"

    if-nez v0, :cond_0

    const-string v0, "getSimSlotPriority: SubscriptionManager is not created. Return 0.."

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 49
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    .line 50
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimSlotPriority: Invalid ADS slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", phoneCount: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    if-ge v1, v0, :cond_2

    .line 55
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subInfo is valid on slot#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    :cond_3
    return v0
.end method

.method public static getSlotId(I)I
    .locals 0

    .line 405
    invoke-static {p0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result p0

    return p0
.end method

.method public static getSubId()I
    .locals 1

    .line 188
    sget v0, Lcom/sec/internal/helper/SimUtil;->sActiveDataPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    return v0
.end method

.method public static getSubId(I)I
    .locals 2

    .line 178
    invoke-static {p0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SimUtil"

    const-string/jumbo v1, "subIdArray is null"

    .line 180
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 183
    aget p0, v0, p0

    return p0
.end method

.method public static isCCT(I)Z
    .locals 1

    .line 318
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 319
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "VZW_US:CCT"

    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCSpire(I)Z
    .locals 1

    .line 297
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 298
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "GenericIR92_US:CSpire"

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCctChaCBRS(I)Z
    .locals 2

    .line 283
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isCctOrChaMnoSim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isCctChaCbrsMsoSim(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 284
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCctChaCBRS: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isCctChaCbrsMsoSim(I)Z
    .locals 3

    .line 265
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda4;-><init>()V

    .line 268
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "314200"

    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "314020"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BA01490000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCctOrChaMnoSim(I)Z
    .locals 3

    .line 274
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 277
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "VZW_US:CCT"

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BA01450000000000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "VZW_US:CHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCurrentDSDASupport()Z
    .locals 2

    const-string/jumbo v0, "ril.msim.submode"

    const-string v1, ""

    .line 204
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDSDACapableDevice()Z
    .locals 2

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 195
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDSH(I)Z
    .locals 1

    .line 240
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 241
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "TMobile_US:DSH"

    .line 243
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDSH5G(I)Z
    .locals 1

    .line 247
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 248
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "Dish_US"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDdsSimSlot(I)Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDishCrossOver()Z
    .locals 7

    const/4 v0, 0x0

    .line 254
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 255
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 257
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 258
    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 259
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "ATT_US:DSH"

    .line 260
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3438"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3440"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "DSG"

    .line 261
    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "6730"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "6738"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v4

    :cond_2
    return v0
.end method

.method public static isDualIMS()Z
    .locals 2

    .line 106
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_DI"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DSDA_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLLA(I)Z
    .locals 1

    .line 311
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 312
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "ATT_US:LLA"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMultiSimSupported()Z
    .locals 2

    const-string v0, "persist.radio.multisim.config"

    const-string v1, ""

    .line 212
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNoSIM(I)Z
    .locals 1

    .line 325
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 326
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSimActive(Landroid/content/Context;I)Z
    .locals 5

    .line 143
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v0

    .line 159
    sget-object v2, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", simState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    return v1

    .line 164
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 p0, 0x6

    if-eq v0, p0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    if-eq v0, v3, :cond_5

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_4

    const-string p1, "phone1_on"

    goto :goto_0

    :cond_4
    const-string p1, "phone2_on"

    :goto_0
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public static isSimMobilityAvailable(Landroid/content/Context;ILcom/sec/internal/constants/Mno;)Z
    .locals 2

    .line 440
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SIM Mobility Feature disabled; "

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isOutboundSim(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Not outbound Sim - SimMobility should be disabled; "

    goto :goto_0

    .line 444
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Disable non voice capable tablet in R OS"

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isAmerica()Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "ro.product.first_api_level"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_3

    const-string p0, "Disable under R OS(first API) except America Region"

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isAmerica()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "SM-P619"

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Disable in SM-P619 except America/CHN Region"

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 454
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p2, "SimUtil"

    .line 458
    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public static isSimMobilityFeatureEnabled()Z
    .locals 3

    const-string v0, "persist.ims.simmobility"

    const/4 v1, -0x1

    .line 221
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SimUtil"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "SimMobility Enabled for test"

    .line 224
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "SimMobility disabled by manual"

    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public static isSoftphoneEnabled()Z
    .locals 2

    .line 236
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "APP"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportCarrierVersion(I)Z
    .locals 2

    .line 392
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GMS_SetClientIDBaseMs"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "samsung"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTmoInbound(I)Z
    .locals 1

    .line 290
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 291
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "TMobile_US:Inbound"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUnited(I)Z
    .locals 1

    .line 304
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 305
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "GenericIR92_US:United"

    .line 307
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isValidSimSlot(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 74
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSimMnoAsNwPlmn$0(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 427
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public static setActiveDataPhoneId(I)V
    .locals 0

    .line 94
    sput p0, Lcom/sec/internal/helper/SimUtil;->sActiveDataPhoneId:I

    return-void
.end method

.method public static setPhoneCount(I)V
    .locals 0

    .line 86
    sput p0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    return-void
.end method

.method public static setSimMno(ILcom/sec/internal/constants/Mno;)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSimMno : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimUtil"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setSubMgr(Landroid/telephony/SubscriptionManager;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    return-void
.end method
