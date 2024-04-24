.class public Lcom/sec/internal/ims/settings/ImsAutoUpdate;
.super Ljava/lang/Object;
.source "ImsAutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;
    }
.end annotation


# static fields
.field public static final GLOBALSETTINGS_UPDATE:Ljava/lang/String; = "globalsettings_update"

.field public static final IMSPROFILE_UPDATE:Ljava/lang/String; = "imsprofile_update"

.field private static final IMSSWITCH_UPDATE:Ljava/lang/String; = "imsswitch_update"

.field protected static final IMSUPDATE_JSON_FILE:Ljava/lang/String; = "imsupdate.json"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsAutoUpdate"

.field private static final MNOMAP_UPDATE:Ljava/lang/String; = "mnomap_update"

.field protected static final MNONAME:Ljava/lang/String; = "mnoname"

.field private static MVNO_DELIMITER:C = ':'

.field protected static final NAME:Ljava/lang/String; = "name"

.field private static final PROVIDERSETTINGS_UPDATE:Ljava/lang/String; = "providersettings_update"

.field private static final RCSRPOLICY_UPDATE:Ljava/lang/String; = "rcspolicy_update"

.field public static final RESOURCE_CARRIER_FEATURE:I = 0x4

.field public static final RESOURCE_DOWNLOAD:I = 0x0

.field public static final RESOURCE_IMSUPDATE:I = 0x1

.field private static final SMS_SETTINGS_UPDATE:Ljava/lang/String; = "sms_settings_update"

.field public static final TAG_DEFAULT_RCS_POLICY:Ljava/lang/String; = "default_rcs_policy"

.field public static final TAG_DEFAULT_UP_POLICY:Ljava/lang/String; = "default_up_policy"

.field public static final TAG_GC_BLOCK_MCC_LIST:Ljava/lang/String; = "gc_block_mcc_list"

.field public static final TAG_GLOBALSETTING:Ljava/lang/String; = "globalsetting"

.field public static final TAG_GLOBALSETTINGS_DEFAULT:Ljava/lang/String; = "defaultsetting"

.field public static final TAG_GLOBALSETTINGS_NOHIT:Ljava/lang/String; = "nohitsetting"

.field public static final TAG_IMSSWITCH:Ljava/lang/String; = "imsswitch"

.field public static final TAG_MNOMAP_ADD:Ljava/lang/String; = "add_mnomap"

.field public static final TAG_MNOMAP_REMOVE:Ljava/lang/String; = "remove_mnomap"

.field public static final TAG_POLICY_NAME:Ljava/lang/String; = "policy_name"

.field public static final TAG_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_RCS_POLICY:Ljava/lang/String; = "rcs_policy"

.field public static final TAG_REPLACE_GC_BLOCK_MCC_LIST:Ljava/lang/String; = "replace_gc_block_mcc_list"

.field protected static final UPDATE_FILE_PATH_CSC:Ljava/lang/String; = "/system/csc"

.field private static mStorage:Landroid/os/storage/StorageManager;

.field private static mUpdateArrays:Lcom/google/gson/JsonArray;

.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCarrierUpdate:Lcom/google/gson/JsonElement;

.field private mContext:Landroid/content/Context;

.field private mCurrentCarrierFeatureHash:Ljava/lang/String;

.field private mCurrentHash:Ljava/lang/String;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHashChanged:Z

.field private mHashManager:Lcom/sec/internal/helper/HashManager;

.field private mImsMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

.field private mImsSetupMode:Z

.field private mLoaded:Z

.field private mNote:Ljava/lang/String;

.field private mPhoneId:I

.field private mShipBuild:Z

.field private mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mUpdate:Lcom/google/gson/JsonElement;

.field private mUpdatedGlobalSettings:Z

.field private mUpdatedImsProfile:Z

.field private mUpdatedImsSwitch:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageListener(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)Landroid/os/storage/StorageEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmStorage()Landroid/os/storage/StorageManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorage:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 107
    sput-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdateArrays:Lcom/google/gson/JsonArray;

    .line 108
    sput-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorage:Landroid/os/storage/StorageManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    .line 90
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    .line 91
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentCarrierFeatureHash:Ljava/lang/String;

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    .line 97
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    const-string/jumbo v0, "ro.product_ship"

    const-string v2, "false"

    .line 98
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mShipBuild:Z

    const-string v0, "debug.test.imssetup.restart"

    .line 99
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mImsSetupMode:Z

    .line 100
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    .line 261
    new-instance v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 112
    invoke-static {p1, p2}, Lcom/sec/internal/helper/HashManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/helper/HashManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    .line 113
    invoke-static {p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mImsMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 114
    new-instance v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    .line 115
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->load()V

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mContext:Landroid/content/Context;

    .line 117
    iput p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    .line 118
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 119
    iget-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mShipBuild:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mImsSetupMode:Z

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorage:Landroid/os/storage/StorageManager;

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    sput-object p1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorage:Landroid/os/storage/StorageManager;

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    return-void
.end method

.method private applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;
    .locals 2

    const-string/jumbo v0, "rcspolicy_update"

    if-eqz p3, :cond_0

    const-string p3, "default_up_policy"

    goto :goto_0

    :cond_0
    const-string p3, "default_rcs_policy"

    .line 717
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 718
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 723
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    .line 732
    :catch_0
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 737
    :cond_2
    invoke-static {p1, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 738
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method private applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 4

    const-string v0, "policy_name"

    const-string/jumbo v1, "rcs_policy"

    const-string/jumbo v2, "rcspolicy_update"

    .line 770
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 771
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 776
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 779
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 780
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 781
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object p2, v1

    .line 798
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 802
    :cond_2
    invoke-static {p1, p2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 803
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public static getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 843
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 845
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "mnoname"

    .line 846
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    .line 852
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no matched element with mnoname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private static getIndexWithNames(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 894
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 895
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 897
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "name"

    .line 898
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "mnoname"

    .line 899
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 900
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    .line 906
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no matched element with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "and mnoname "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .locals 3

    .line 128
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    monitor-exit v0

    return-object p0

    .line 132
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->checkLoaded()Z

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static isMatchedMnoName(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 884
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string p0, ":"

    .line 887
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private loadImsAutoUpdate()Z
    .locals 11

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdateFilePath()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use imsupdate file on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "]"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    :try_start_1
    new-instance v5, Lcom/google/gson/stream/JsonReader;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v5, v6}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 159
    :try_start_2
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 160
    invoke-virtual {v6, v5}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    .line 161
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v9, "note"

    invoke-virtual {v6, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 164
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-nez v9, :cond_0

    .line 165
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    .line 166
    iget v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imsupdate is ready : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v6, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v6, "imsprofile_update"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string/jumbo v6, "profile"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdateArrays:Lcom/google/gson/JsonArray;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 176
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v2, v9

    new-array v2, v2, [B

    .line 177
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 178
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_2

    .line 180
    sget-object v7, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read imsupdate.json! Got ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    invoke-virtual {v6, v2}, Lcom/sec/internal/helper/HashManager;->getHash([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    :catch_1
    :try_start_6
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_7 .. :try_end_7} :catch_2

    move v4, v1

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 156
    :try_start_8
    invoke-virtual {v5}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v2, "imsupdate.json parsing fail."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v2, "imsupdate.json not found."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, ""

    .line 196
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    .line 200
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    const-string v1, "imsupdate"

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/HashManager;->isHashChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    .line 201
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadImsAutoUpdate: hash changed ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v4
.end method

.method private static needCheckMvno(Lcom/google/gson/JsonArray;Ljava/lang/String;)Z
    .locals 5

    .line 864
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 865
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 867
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "mnoname"

    .line 868
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 869
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 876
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static readFromJsonFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 930
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdateArrays:Lcom/google/gson/JsonArray;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 933
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdateArrays:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 935
    :try_start_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "name"

    .line 936
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN update source "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CARRIER_FEATURE"

    return-object p0

    :cond_1
    const-string p0, "IMSUPDATE"

    return-object p0

    :cond_2
    const-string p0, "SMK"

    return-object p0
.end method


# virtual methods
.method public applyDefaultSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "defaultsetting"

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v2, 0x1

    .line 663
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const/4 v3, 0x4

    .line 664
    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 667
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 669
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 675
    :cond_0
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 677
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 683
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    invoke-static {p1, p0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 685
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 3

    .line 543
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    sget-object p2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v0, "Not a valid GlobalElement."

    invoke-static {p2, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    .line 549
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalsetting"

    .line 550
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 552
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 555
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 556
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update globalsettings by resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " => "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 557
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    .line 561
    :goto_0
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p0, p2, :cond_2

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public applyImsProfileUpdate(Lcom/google/gson/JsonArray;ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "profile"

    .line 488
    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getImsProfileUpdate(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 490
    const-class v5, Lcom/google/gson/JsonArray;

    invoke-static {v1, v5}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    .line 491
    invoke-static {v1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->needCheckMvno(Lcom/google/gson/JsonArray;Ljava/lang/String;)Z

    move-result v5

    .line 492
    sget-object v6, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v7, v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyImsProfileUpdate fullNameCheck : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 494
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "name"

    .line 495
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "mnoname"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 496
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 498
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v5, v10, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isMatchedMnoName(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "mdmn_type"

    .line 499
    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    invoke-static {v1, v8, v10}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithNames(Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    const-string v12, " => "

    if-ne v10, v11, :cond_2

    .line 504
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 505
    iget-object v6, v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add imsprofile by resource: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 509
    invoke-virtual {v1, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 510
    iget-object v14, v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update imsprofile by resource: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 511
    invoke-static {v13, v6}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_3

    .line 513
    invoke-virtual {v1, v10, v0}, Lcom/google/gson/JsonArray;->set(ILcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    :cond_3
    if-eqz v11, :cond_4

    .line 516
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    invoke-virtual {v7, v9, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public applyImsProfileUpdate(Lcom/google/gson/JsonArray;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 2

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 479
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    .line 480
    iget-boolean p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    :cond_1
    return-object p1
.end method

.method public applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;
    .locals 3

    .line 597
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    sget-object p2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v0, "Not a valid imsswitchElement."

    invoke-static {p2, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imsswitch"

    .line 604
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getImsSwitches(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 606
    invoke-static {v1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 609
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update imsswitch by resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " => "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 611
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p1

    .line 615
    :goto_0
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p0, p2, :cond_2

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public applyNohitSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "nohitsetting"

    .line 624
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v2, 0x1

    .line 625
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const/4 v3, 0x4

    .line 626
    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 629
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-static {p1, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 631
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 637
    :cond_0
    invoke-static {v2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 645
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    invoke-static {p1, p0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 647
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public checkLoaded()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    if-nez v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadImsAutoUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    .line 144
    :cond_3
    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    return p0
.end method

.method public clearSmkConfig()V
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->clearSmkConfig()V

    return-void
.end method

.method public dump()V
    .locals 3

    .line 948
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v2, "\nDump of ImsAutoUpdate:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 949
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getDefaultGlobalSettingsFromImsUpdate(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "defaultsetting"

    .line 428
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 429
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 431
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getExternalStorageImsUpdatePath()Ljava/lang/String;
    .locals 6

    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 281
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mShipBuild:Z

    const-string v2, ""

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$$ExternalSyntheticLambda0;-><init>()V

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$$ExternalSyntheticLambda1;-><init>()V

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExternalStorageImsUpdatePath() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    .line 293
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStorageImsUpdatePath() path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    new-instance p0, Ljava/io/File;

    const-string v1, "imsupdate.json"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2
.end method

.method public getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "globalsettings_update"

    .line 395
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 401
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 407
    :catch_0
    :cond_0
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public getGlobalSettingsSpecificParam(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "globalsetting"

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getGlobalSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 415
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 417
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found Globalsetting for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 419
    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsProfileUpdate(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "imsprofile_update"

    .line 366
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 370
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 376
    :catch_0
    :cond_0
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public getImsSwitches(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "imsswitch_update"

    .line 380
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 385
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 391
    :catch_0
    :cond_0
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "mnomap_update"

    .line 439
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 443
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[]"

    .line 444
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 447
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 452
    :catch_0
    :cond_1
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public getProviderSettings(ILjava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string/jumbo v0, "providersettings_update"

    .line 456
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 460
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[]"

    .line 461
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 464
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 469
    :catch_0
    :cond_1
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public getRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;Z)Lcom/google/gson/JsonElement;
    .locals 1

    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x1

    .line 706
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x4

    .line 709
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;IZ)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 746
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 754
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x1

    .line 759
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x4

    .line 762
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyRcsPolicySettingUpdate(Lcom/google/gson/JsonElement;ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_1

    .line 747
    :cond_1
    :goto_0
    sget-object p2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v0, "policyName is not valid or policy is JsonNull"

    invoke-static {p2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public getSmkConfig()Lcom/google/gson/JsonObject;
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method protected getUpdateFilePath()Ljava/lang/String;
    .locals 6

    .line 306
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getExternalStorageImsUpdatePath()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsSetup. getUpdateFilePath() path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 313
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v0

    const-string v1, "/system/csc/imsupdate.json"

    if-eqz v0, :cond_3

    .line 314
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getOmcNwPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/system/csc"

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 318
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "imsupdate.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateFilePath() omcPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getEtcPath()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget v4, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getUpdateFilePath() etcPath : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / nwCode : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 2

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x1

    .line 531
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v1, 0x4

    .line 532
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyGlobalSettingUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 534
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedGlobalSettings:Z

    .line 535
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    :cond_0
    return-object p1
.end method

.method public getUpdatedImsSwitch(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 2

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    const/4 v1, 0x4

    .line 569
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsSwitchUpdate(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 571
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsSwitch:Z

    .line 572
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdatedImsProfile:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->saveHash()V

    :cond_0
    return-object p1
.end method

.method getUpdatedSmsSetting(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 811
    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 813
    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 814
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "mnoname"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v5, 0x2

    if-ge v1, v5, :cond_2

    .line 815
    aget v5, v0, v1

    .line 817
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string/jumbo v6, "sms_settings_update"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 818
    invoke-static {v5}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "default_setting"

    .line 819
    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    invoke-virtual {v5, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    goto :goto_1

    .line 821
    :cond_0
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "sms_settings"

    .line 822
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 823
    invoke-static {v5, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 825
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    :cond_2
    invoke-static {p1, v2}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 834
    invoke-static {p0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method public isCarrierFeatureChanged(I)Z
    .locals 4

    .line 206
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarrierFeature_IMS_ImsUpdate"

    const-string v3, ""

    .line 207
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iput-object v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentCarrierFeatureHash:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HashManager;->getHash([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentCarrierFeatureHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    const-string v0, "carrierfeature"

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentCarrierFeatureHash:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/helper/HashManager;->isHashChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMatchedImsSwitch(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "imsswitch"

    .line 580
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getImsSwitches(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 582
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->MVNO_DELIMITER:C

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 585
    :cond_0
    sget-object p3, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatchedImsSwitch source : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->sourceToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, v1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 587
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getIndexWithMnoname(Lcom/google/gson/JsonArray;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    .line 589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isMatchedImsSwitch for : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateNeeded()Z
    .locals 3

    .line 337
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLoaded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->checkLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->hasNewSmkConfig()Z

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

.method public loadCarrierFeature()Z
    .locals 8

    .line 227
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v0

    const-string v1, "persist.ims.carrierfeature_force_use"

    const/4 v3, -0x1

    .line 228
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 229
    sget-object v4, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadCarrierFeature  carrierId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " forceProp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    return v2

    .line 237
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 239
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v5, "CarrierFeature_IMS_ImsUpdate"

    const-string v6, ""

    .line 240
    invoke-virtual {v1, v3, v5, v6, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string v1, "carrierfeature was not found."

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/HashManager;->getHash([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentCarrierFeatureHash:Ljava/lang/String;

    .line 247
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    const-string v6, "carrierfeature"

    invoke-virtual {v5, v6, v3}, Lcom/sec/internal/helper/HashManager;->saveHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully get carrier feature : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    sget-object v1, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem on Carrier feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return v2
.end method

.method public resetCarrierFeatureHash()V
    .locals 3

    .line 220
    sget-object v0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mPhoneId:I

    const-string/jumbo v2, "reset carrier config hash"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    const-string v0, "carrierfeature"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HashManager;->saveHash(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 953
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mLoaded:Z

    return-void
.end method

.method public saveHash()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCurrentHash:Ljava/lang/String;

    const-string v2, "imsupdate"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/HashManager;->saveHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashManager:Lcom/sec/internal/helper/HashManager;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mNote:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/HashManager;->saveMemo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mHashChanged:Z

    return-void
.end method

.method public selectResource(I)Lcom/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mUpdate:Lcom/google/gson/JsonElement;

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mCarrierUpdate:Lcom/google/gson/JsonElement;

    return-object p0

    .line 349
    :cond_3
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0
.end method

.method public updateSmkConfig(Ljava/lang/String;)V
    .locals 1

    .line 915
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 917
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->mSmkConfig:Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->saveSmkConfig(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void
.end method
