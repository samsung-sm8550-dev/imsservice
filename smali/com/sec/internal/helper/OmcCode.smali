.class public Lcom/sec/internal/helper/OmcCode;
.super Ljava/lang/Object;
.source "OmcCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/OmcCode$EUR_TSS2_0_COUNTRYCODE;
    }
.end annotation


# static fields
.field private static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final LOG_TAG:Ljava/lang/String; = "OmcCode"

.field public static final OMC_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.sales_code"

.field private static final PERSIST_LAST_OMCNW_CODE:Ljava/lang/String; = "persist.sys.ims.last_omcnw_code"

.field private static final PERSIST_LAST_OMCNW_CODE2:Ljava/lang/String; = "persist.sys.ims.last_omcnw_code2"

.field private static final PERSIST_OMCNW_PATH:Ljava/lang/String; = "persist.sys.omcnw_path"

.field private static final PERSIST_OMCNW_PATH2:Ljava/lang/String; = "persist.sys.omcnw_path2"

.field private static final PERSIST_OMCSUPPORT:Ljava/lang/String; = "persist.sys.omc_support"

.field public static final PERSIST_OMC_CODE_PROPERTY:Ljava/lang/String; = "persist.omc.sales_code"

.field private static final PERSIST_OMC_ETC_PATH:Ljava/lang/String; = "persist.sys.omc_etcpath"

.field private static final PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.omc.sales_code"

    const-string v1, ""

    .line 45
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 47
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getCurrentNWCode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 124
    invoke-static {p0, v0}, Lcom/sec/internal/helper/OmcCode;->getOmcCodeByNwPath(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEtcPath()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getNWPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.omc_etcpath"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastOmcNwCode(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "persist.sys.ims.last_omcnw_code"

    goto :goto_0

    :cond_0
    const-string p0, "persist.sys.ims.last_omcnw_code2"

    .line 91
    :goto_0
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNWCode(I)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getLastOmcNwCode(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/internal/helper/OmcCode;->getOmcCodeByNwPath(IZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getNWPath(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "persist.sys.omcnw_path"

    goto :goto_0

    :cond_0
    const-string p0, "persist.sys.omcnw_path2"

    .line 136
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOmcCodeByNwPath(IZ)Ljava/lang/String;
    .locals 7

    .line 72
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getNWPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/OmcCode;->isUpperCaseOrDigit(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/OmcCode;->isUpperCaseOrDigit(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/OmcCode;->isUpperCaseOrDigit(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOmcCodeByNwPath : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OmcCode"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static getOmcNwPath(I)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWPath(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/sec/internal/helper/OmcCode;->getUpdatedPathUsingLastNwCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOpenBuyerByCountryIso(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, ""

    .line 238
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 243
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode$EUR_TSS2_0_COUNTRYCODE;->values()[Lcom/sec/internal/helper/OmcCode$EUR_TSS2_0_COUNTRYCODE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 244
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-virtual {v4}, Lcom/sec/internal/helper/OmcCode$EUR_TSS2_0_COUNTRYCODE;->getOpenBuyer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.omc_path"

    const-string v1, "/system/csc"

    .line 132
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTSS2_0_NWCode(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->getCountryFromMnomap(Ljava/lang/String;)Lcom/sec/internal/constants/Mno$Country;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->representativeCountryISO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ro.boot.activatedid"

    const-string v1, ""

    .line 60
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activatedId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OmcCode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getOpenBuyerByCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUpdatedPathUsingLastNwCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 106
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getLastOmcNwCode(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 114
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdatedPathUsingLastNwCode omcCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OmcCode"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method public static getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTSS2_0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getTSS2_0_NWCode(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isChinaOmcCode()Z
    .locals 2

    .line 173
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHM"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TGY"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BRI"

    .line 177
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

.method public static isDCMOmcCode()Z
    .locals 2

    const-string v0, "DCM"

    .line 196
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJPNOmcCode()Z
    .locals 2

    const-string v0, "DCM"

    .line 187
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KDI"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KDR"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UQM"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JCO"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SJP"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isJPNOpenOmcCode()Z
    .locals 2

    const-string/jumbo v0, "ro.product.model"

    const-string v1, ""

    .line 201
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-F700J"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKDIMhs()Z
    .locals 2

    .line 191
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_MHS_DONGLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KDI"

    .line 192
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDR"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UQM"

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

.method public static isKOROmcCode()Z
    .locals 1

    .line 169
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

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

.method public static isKTTOmcCode()Z
    .locals 2

    const-string v0, "KTT"

    .line 153
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isKorOpenOmcCode()Z
    .locals 2

    const-string v0, "KOO"

    .line 161
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static isKorOpenOnlyOmcCode()Z
    .locals 2

    const-string v0, "KOO"

    .line 165
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLGTOmcCode()Z
    .locals 2

    const-string v0, "LGT"

    .line 157
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LUC"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isMainlandChinaOmcCode()Z
    .locals 2

    .line 181
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHM"

    .line 183
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

.method public static isOmcModel()Z
    .locals 2

    const-string v0, "persist.sys.omc_support"

    const-string v1, "false"

    .line 145
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRKTOmcCode()Z
    .locals 2

    const-string v0, "RKT"

    .line 199
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSKTOmcCode()Z
    .locals 2

    const-string v0, "SKT"

    .line 149
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SKC"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isTmpSimSwap(I)Z
    .locals 1

    .line 128
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isUpperCaseOrDigit(Ljava/lang/Character;)Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

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

.method public static saveLastOmcNwCode(ILjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "persist.sys.ims.last_omcnw_code"

    goto :goto_0

    :cond_0
    const-string p0, "persist.sys.ims.last_omcnw_code2"

    .line 95
    :goto_0
    invoke-static {p0, p1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
