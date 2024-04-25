.class public Lcom/sec/internal/ims/util/ImsUtil;
.super Ljava/lang/Object;
.source "ImsUtil.java"


# static fields
.field public static final IPME_STATUS:Ljava/lang/String; = "ipme_status"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtil"

.field private static final sSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil;->sSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIR94PolicyForUsDsds(I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 473
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-static {v2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    sget-object v5, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIR94PolicyForUsDsds: omcCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", omcNwCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", counterOmcNwCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-eq p0, v3, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public static getAvailableCellInfo(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_5

    .line 228
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 229
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 230
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 231
    instance-of v3, v2, Landroid/telephony/CellIdentityGsm;

    const v4, 0x7fffffff

    if-eqz v3, :cond_1

    .line 232
    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    instance-of v3, v2, Landroid/telephony/CellIdentityWcdma;

    if-eqz v3, :cond_2

    .line 236
    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_2
    instance-of v3, v2, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v3, :cond_3

    .line 240
    check-cast v2, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_3
    instance-of v3, v2, Landroid/telephony/CellIdentityLte;

    if-eqz v3, :cond_4

    .line 244
    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_4
    instance-of v3, v2, Landroid/telephony/CellIdentityNr;

    if-eqz v3, :cond_0

    .line 248
    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 254
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableCellInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getComposerAuthValue(ILandroid/content/Context;)I
    .locals 3

    const-string v0, "composerAuth"

    .line 536
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2, p0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    .line 535
    invoke-static {p1, v1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getHandle(J)I
    .locals 0

    .line 0
    long-to-int p0, p0

    return p0
.end method

.method public static getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "simslot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicId(I)Ljava/lang/String;
    .locals 4

    .line 425
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getImModule: getInstance is null"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 429
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 430
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPublicId: registered IMPU="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 445
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "There is no impu"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ""

    :cond_3
    return-object v1
.end method

.method public static getRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 629
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->sSecureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static getRatInNoSimCase(ILandroid/content/Context;)I
    .locals 4

    .line 514
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRatInNoSimCase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "isemtelephony"

    .line 515
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    const/16 v2, 0xd

    if-eqz v1, :cond_0

    .line 518
    :try_start_0
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-interface {v1, p0, v3, p1}, Lcom/android/internal/telephony/ISemTelephony;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAT from cellIdentity = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    const/16 p0, 0x14

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 525
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "Unable to find ISemTelephony interface."

    .line 528
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final rat = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 502
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 503
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    .line 504
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 505
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 509
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public static getVBCAuthValue(ILandroid/content/Context;)I
    .locals 1

    const-string v0, "VBCAuth"

    .line 543
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 542
    invoke-static {p1, p0, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static hideInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "none"

    .line 393
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    .line 399
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hideInfo had OutOfBoundeEception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static isAddMmtelCallComposerTag(ILandroid/content/Context;)Z
    .locals 4

    .line 570
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 572
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result v0

    .line 573
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getVBCAuthValue(ILandroid/content/Context;)I

    move-result p1

    .line 575
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composerAuthVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vbcAuthVal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "set isAddMmtelCallComposerTag as true"

    .line 578
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCdmalessEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 128
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public static isCdmalessEnabled(Landroid/content/Context;IZ)Z
    .locals 2

    .line 132
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    sget-object p2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCdmalessEnabled, SIM not ready"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 137
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_3

    .line 138
    :cond_1
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 139
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isVzwInboundWithCdmaLess(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCdmalessModel(Landroid/content/Context;I)Z
    .locals 10

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 93
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v0, v2, :cond_6

    const-string v0, "FKR"

    .line 94
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "LRA"

    .line 99
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p0

    const-string p1, "exceptive_cdma_less_for_lra"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getDefaultGlobalSettingsFromImsUpdate(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 104
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CDMALESS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "CDMALESS Not enabled"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 110
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    .line 113
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 115
    sget-object v6, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_CDMALESS SHOULD has first salescode ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    const-wide/16 v8, 0x1

    invoke-interface {v2, v8, v9}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sec/internal/ims/util/ImsUtil$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5}, Lcom/sec/internal/ims/util/ImsUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 115
    invoke-static {v6, p1, v7, v2}, Lcom/sec/internal/log/IMSLog;->assertFalse(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 123
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_4

    .line 124
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sec/internal/ims/util/ImsUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1, v4}, Lcom/sec/internal/ims/util/ImsUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3
.end method

.method public static isDualVideoCallAllowed(I)Z
    .locals 5

    .line 485
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDishCrossOver()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 489
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 491
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualVideoCallAllowed: Check video for ADS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 494
    :cond_2
    invoke-static {p0}, Lcom/sec/internal/ims/util/ImsUtil;->checkIR94PolicyForUsDsds(I)Z

    move-result v0

    .line 495
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualVideoCallAllowed: Check video for IR94Policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public static isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "volte"

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "rcs"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "chat"

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p1

    .line 194
    :goto_0
    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 195
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 190
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid service type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isMcsSupported(I)Z
    .locals 4

    .line 617
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOnlyOmcCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "cms_mcs_enabled"

    .line 618
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 620
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v3, "support"

    goto :goto_0

    :cond_2
    const-string v3, "not support"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public static isPttSupported()Z
    .locals 4

    .line 386
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_PTT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 387
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPttSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRttModeOnFromCallSettings(Landroid/content/Context;I)Z
    .locals 4

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "preferred_rtt_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 81
    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSimMobilityActivated(I)Z
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result p0

    return p0
.end method

.method public static isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z
    .locals 1

    .line 178
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSimMobilityActivatedForRcs(I)Z
    .locals 0

    .line 174
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivatedForRcs()Z

    move-result p0

    return p0
.end method

.method public static isSingleRegiAppConnected(I)Z
    .locals 1

    .line 625
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/internal/google/SecImsNotifier;->hasSipDelegate(I)Z

    move-result p0

    return p0
.end method

.method public static isVzwInboundWithCdmaLess(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z
    .locals 5

    .line 153
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_3

    .line 154
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    .line 155
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 156
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "VZW_US:TFN"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TFN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 549
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 551
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isWifiConnected: ConnectivityManager is null "

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_1

    .line 557
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isWifiConnected: Default NW is null "

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 561
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 563
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    .line 564
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static listToDumpFormat(IILjava/lang/String;)V
    .locals 2

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    .line 418
    invoke-static {p2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 406
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 407
    invoke-static {p2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, ","

    .line 409
    invoke-static {p1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "listToDumpFormat has an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static needForceRegiOrPublishForMmtelCallComposer(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, "mmtel-call-composer"

    .line 587
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 592
    :cond_0
    invoke-static {p2, p0}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result p1

    .line 593
    invoke-static {p2, p0}, Lcom/sec/internal/ims/util/ImsUtil;->getVBCAuthValue(ILandroid/content/Context;)I

    move-result p0

    .line 595
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composerAuthVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vbcAuthVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-ne p0, v3, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v0

    .line 602
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v2

    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    .line 604
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-interface {v2, p2, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->isOwnPresenceInfoHasTuple(IJ)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "needForceRegi or Publish: callcomposer tuple present case"

    .line 605
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_4
    if-eqz p1, :cond_5

    .line 607
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-interface {v2, p2, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->isOwnPresenceInfoHasTuple(IJ)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "needForceRegi or Publish: callcomposer tuple not present case"

    .line 608
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_5
    const-string p0, "needForceRegi or Publish: return false"

    .line 611
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 588
    :cond_6
    :goto_3
    sget-object p0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Profile is null or doesn\'t have mmtel-call-composer"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public static needForceToUsePsE911(IZ)Z
    .locals 2

    const-string v0, "emergency_domain_setting"

    const-string v1, "CS"

    .line 265
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyImsProfileLoaded(Landroid/content/Context;I)V
    .locals 2

    .line 270
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImsProfileLoaded"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice.action.IMS_PROFILE_LOADED"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 273
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 274
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.epdg"

    .line 275
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static updateEmergencyCallDomain(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V
    .locals 9

    .line 280
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEmergencyCallDomain:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyCallDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PS"

    .line 287
    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v2, "IMS"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 291
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emergencyCallDomain: isPsDomainInSettings-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", SIM absent-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v5

    const-string v6, "originalEmergencyCallDomain"

    const-string v7, "globalsettings"

    if-nez v5, :cond_8

    .line 294
    invoke-static {p1, p0, v7, v6, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 299
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v4

    :goto_3
    if-eqz p2, :cond_5

    .line 304
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move-object v5, v1

    .line 307
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emergencyCallDomain: targetDomain from globalsetting-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    .line 311
    :cond_8
    invoke-static {p1, p3, p2, v4}, Lcom/sec/internal/ims/util/ImsUtil;->updateEmergencyCallDomainForNoSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/ims/settings/ImsProfile;Z)Z

    move-result v5

    const-string v8, ""

    .line 312
    invoke-static {p1, p0, v7, v6, v8}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 313
    invoke-static {p1, p0, v7, v6, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_9
    :goto_4
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    .line 318
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v6

    const-string v7, "CS"

    if-nez v6, :cond_b

    if-ne v2, v5, :cond_b

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "emergencyCallDomain: already "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v7

    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_b
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_e

    if-eqz p2, :cond_d

    goto :goto_6

    :cond_d
    move v3, v4

    .line 330
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hasEmergencyProfile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v3, :cond_e

    const-string p0, "emergencyCallDomain: no E911 profile keep e-domain as CS"

    .line 332
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_e
    move v3, v5

    :goto_7
    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    move-object v1, v7

    .line 340
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update emergency Domain: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " => "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "emergency_domain_setting"

    .line 342
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object p3, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static updateEmergencyCallDomainForNoSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/ims/settings/ImsProfile;Z)Z
    .locals 6

    .line 354
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 355
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    .line 356
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EUX"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "EUY"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "no_sim_emergency_domain_setting"

    const-string v3, "CS"

    .line 358
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PS"

    .line 359
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 365
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportNoSimPsE911: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", simMno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", salesCodeMno: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 365
    invoke-static {v3, p0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_2

    move p3, v1

    .line 371
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p0

    if-eqz p0, :cond_4

    move p3, v1

    .line 374
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isDCMOmcCode()Z

    move-result p0

    if-eqz p0, :cond_5

    move p3, v1

    .line 377
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 378
    sget-object p1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, p3

    :goto_2
    return v1
.end method

.method public static updateSsDomain(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 215
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update SS domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "ss_domain_setting"

    .line 217
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object p2, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->updateCapabilities(I)V

    :cond_0
    return-void
.end method
