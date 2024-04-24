.class public Lcom/sec/internal/helper/os/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeviceUtil"

.field private static final OMC_DATA_FILE:Ljava/lang/String; = "omc_data.json"

.field private static final OMC_PATH_PRISM:Ljava/lang/String; = "/prism/etc/"

.field private static final REPRESENTATIVE_COUNTRY_ISO:[[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ZTPkMZJRWcjB8-164vJAx2-tRjQ(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->lambda$getFormattedDeviceId$1(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g82rTUvUmrE00OFSpS18x0YJmlg(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->lambda$getFormattedDeviceId$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 13

    const-string v0, "SE"

    const-string v1, "NO"

    const-string v2, "DK"

    const-string v3, "FI"

    const-string v4, "IS"

    const-string v5, "GL"

    .line 47
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "LU"

    const-string v1, "BE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "LT"

    const-string v1, "EE"

    const-string v2, "LV"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "AL"

    const-string v1, "MK"

    const-string v2, "RS"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "GB"

    const-string v1, "IE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "GR"

    const-string v1, "CY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "SI"

    const-string v1, "HR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/os/DeviceUtil;->REPRESENTATIVE_COUNTRY_ISO:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dimVolteMenuBySaMode(I)Z
    .locals 5

    .line 240
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_VoiceCall_ConfigOpStyleForMobileNetSetting"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForMobileNetSetting"

    invoke-virtual {v2, p0, v4}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SUPPORT_VOLTE_DIM_BY_SA_MODE"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static getChipName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.hardware.chipname"

    const-string v1, ""

    .line 102
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 281
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 282
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    .line 283
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_0
    sget-object p1, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFormattedDeviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v1, "null!"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getGcfMode()Z
    .locals 2

    const-string v0, "persist.ims.gcfmode"

    const-string v1, "0"

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getModemBoardName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.modem.board"

    const-string v1, ""

    .line 98
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiStatus(Landroid/content/Context;I)I
    .locals 2

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_on"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static includedSimByTSS(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/prism/etc//omc_data.json"

    .line 177
    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/DeviceUtil;->includedSimByTSS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static includedSimByTSS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "unified_sales_code_list"

    .line 182
    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->getCountryFromMnomap(Ljava/lang/String;)Lcom/sec/internal/constants/Mno$Country;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->representativeCountryISO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    .line 187
    :try_start_0
    new-instance p1, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p1, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 189
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v3, ""

    .line 193
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 199
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    move v2, p0

    .line 209
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 187
    :try_start_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 210
    sget-object p1, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "omc_data.json parsing failed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_2
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "omc_data.json not found."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_1
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "includedSimByTSS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " in Unified Sales Code (TSS2.0)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isApAssistedMode()Z
    .locals 2

    const-string/jumbo v0, "ro.telephony.iwlan_operation_mode"

    const-string v1, "AP-Assisted"

    .line 250
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOtpAuthorized()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/efs/sec_efs/"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ".otp_auth"

    aput-object v4, v3, v0

    .line 79
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "true"

    .line 80
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move v0, v2

    :catch_0
    :cond_0
    return v0
.end method

.method public static isSupport5G(Landroid/content/Context;)Z
    .locals 4

    .line 132
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 136
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Support5G() : true"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 140
    :cond_0
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Support5G() : false"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportNrMode(Lcom/sec/internal/helper/os/ITelephonyManager;I)Z
    .locals 4

    .line 260
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetNrMode(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 262
    :goto_1
    sget-object v1, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTelephonyManager.semGetNrMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public static isTSS2_0()Z
    .locals 2

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, ""

    .line 154
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EUX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    .line 58
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUSMvnoDevice()Z
    .locals 6

    const-string v0, "TFN"

    const-string v1, "TFV"

    const-string v2, "TFA"

    const-string v3, "TFO"

    const-string v4, "XAG"

    const-string v5, "XAR"

    .line 73
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUSOpenDevice()Z
    .locals 2

    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, ""

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SED"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUnifiedSalesCodeInTSS()Z
    .locals 4

    const-string v0, "mdc.unified"

    const-string v1, "false"

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnifiedSalesCodeInTSS() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 88
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0

    .line 93
    :cond_0
    sget-object p0, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "temp log : User is lock"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiOnlyModel()Z
    .locals 2

    const-string/jumbo v0, "ro.carrier"

    const-string v1, "Unknown"

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.radio.noril"

    const-string v1, "no"

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static synthetic lambda$getFormattedDeviceId$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]?[0-9]"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFormattedDeviceId$1(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 282
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, ";svn=%02d"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeVolteMenuByCsc(I)Z
    .locals 5

    .line 220
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v2, p0, v4}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-VOLTECALL"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static removeVolteMenuWithSimMobility(I)Z
    .locals 4

    .line 230
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {p0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "-VOLTECALL_SIM_MOBILITY"

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "-VOLTECALL"

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static representativeCountryISO(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 161
    sget-object v0, Lcom/sec/internal/helper/os/DeviceUtil;->REPRESENTATIVE_COUNTRY_ISO:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 162
    invoke-static {v4, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    aget-object v0, v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 168
    :goto_1
    sget-object v1, Lcom/sec/internal/helper/os/DeviceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "representativeCountryISO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ==> "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setGcfMode(Z)V
    .locals 4

    .line 112
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v1, ""

    if-eqz p0, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF_OPERATOR_CODE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNONAME_PROPERTY:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF_OPERATOR_NAME:Ljava/lang/String;

    :cond_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p0, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v3, "persist.ims.gcfmode"

    .line 116
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const-string p0, "persist.radio.gcfmode"

    .line 117
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
