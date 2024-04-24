.class public Lcom/sec/internal/ims/settings/DeviceConfigManager;
.super Ljava/lang/Object;
.source "DeviceConfigManager.java"


# static fields
.field private static final CONFIG_URI:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/"

.field public static final DEFAULTMSGAPPINUSE:Ljava/lang/String; = "defaultmsgappinuse"

.field private static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "DEFAULT"

.field private static final DEFAULT_DMCONFIG_NAME:Ljava/lang/String; = "default"

.field public static final IMS:Ljava/lang/String; = "ims"

.field private static final IMS_TEST_MODE:Ljava/lang/String; = "IMS_TEST_MODE"

.field private static final LOCK:Ljava/lang/Object;

.field public static final LOG_TAG:Ljava/lang/String; = "DeviceConfigManager"

.field public static final NV_INIT_DONE:Ljava/lang/String; = "nv_init_done"

.field public static final NV_VERSION_DEFAULT:Ljava/lang/String; = "1"

.field public static final NV_VERSION_USC_NR_OOB:Ljava/lang/String; = "2"

.field private static final OMADM_DB_NAME_PREFIX:Ljava/lang/String; = "OMADM_"

.field public static final OMADM_PREFIX:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field private static final OMC_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final RCS:Ljava/lang/String; = "rcs"

.field public static final RCS_SWITCH:Ljava/lang/String; = "rcsswitch"

.field public static final VOLTE:Ljava/lang/String; = "volte"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

.field protected mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

.field private mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mMvnoName:Ljava/lang/String;

.field private mNvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

.field private mPhoneId:I

.field private mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

.field private mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

.field private mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;


# direct methods
.method public static synthetic $r8$lambda$r1UI-aepmL0XapPoo_uCS1tpybY(Lcom/sec/internal/ims/settings/DeviceConfigManager;Ljava/lang/Integer;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->lambda$initStorage$0(Ljava/lang/Integer;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 94
    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 99
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    const-string v1, ""

    .line 100
    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    .line 101
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    .line 105
    iput p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 106
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v3, 0x12c

    const-string v4, "DeviceConfigManager"

    invoke-direct {v2, p1, p2, v4, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 108
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 110
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 119
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToRefreshGcf : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    new-instance v1, Lcom/sec/internal/ims/settings/ImsProfileCache;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    .line 121
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 123
    new-instance v0, Lcom/sec/internal/ims/settings/SmsSetting;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/settings/SmsSetting;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateNvList()V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Lcom/sec/internal/ims/settings/NvStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/internal/ims/settings/NvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 132
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/settings/UserConfigStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    .line 134
    new-instance p1, Lcom/sec/internal/ims/settings/DebugConfigStorage;

    iget-object p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

    .line 136
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    iget-object p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 138
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    if-ne p1, p2, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->setDbCreated(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private getDbTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const-string p1, "DEFAULT"

    .line 723
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMADM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDmConfigXmlParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "dmconfig"

    const-string/jumbo v3, "xml"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method private initStorage()Z
    .locals 13

    .line 213
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDbTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM CONFIG DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Mno : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-interface {v4, v5, v3, v6}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 221
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateNvList()V

    .line 222
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 225
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_3

    .line 226
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-nez v4, :cond_0

    .line 227
    new-instance v4, Lcom/sec/internal/ims/settings/NvStorage;

    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-direct {v4, v7, v8, v9}, Lcom/sec/internal/ims/settings/NvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v7, "omadm"

    invoke-virtual {v4, v7, v5}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v4, :cond_2

    .line 231
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 229
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 237
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_3
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 242
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v8, "omadm/*"

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 245
    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDefaultDmConfig(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/Map;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v4, :cond_5

    .line 246
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_5

    const-string v9, "LRA"

    .line 247
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v9}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const-string v9, "93"

    .line 253
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    const-string v9, "94"

    .line 254
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    const-string v9, "31"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    const-string v9, "133"

    .line 255
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    .line 253
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    const-string v11, "1"

    new-instance v12, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v12, v11}, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0, v9, v4}, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/settings/DeviceConfigManager;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initDmConfig(Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 266
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "omadm/./3GPP_IMS/nv_init_done"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v3, "nv_init_done"

    const-string v4, "1"

    iget v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v3, v4, v9}, Lcom/sec/ims/settings/NvConfiguration;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    aput-object v3, v1, v6

    const-string v3, "omadm/./3GPP_IMS/EAB_SETTING"

    aput-object v3, v1, v2

    const-string v3, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    aput-object v3, v1, v7

    .line 276
    invoke-direct {p0, v1, v5, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, -0x1

    if-eqz v1, :cond_a

    .line 277
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    move v5, v4

    .line 281
    :cond_6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    .line 283
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v3, "1"

    .line 284
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_3

    :cond_7
    const-string v9, "omadm/./3GPP_IMS/EAB_SETTING"

    .line 285
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v4, "1"

    .line 286
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    :cond_8
    const-string v9, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    .line 287
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 288
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 290
    :cond_9
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v7, :cond_6

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 276
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_a
    move v4, v3

    move v5, v4

    :goto_5
    if-eqz v1, :cond_b

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v6, :cond_f

    .line 296
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v6, :cond_c

    goto :goto_6

    .line 303
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_11

    .line 304
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x1e

    if-eq v5, v1, :cond_e

    .line 306
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->changePollListSubExp(I)V

    :cond_e
    if-eq v4, v2, :cond_11

    .line 310
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initEabFeature()V

    goto :goto_7

    :cond_f
    :goto_6
    if-eq v3, v2, :cond_10

    .line 298
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initVoLTEFeature()V

    :cond_10
    if-eqz v4, :cond_11

    .line 301
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->disableEabFeature()V

    .line 314
    :cond_11
    :goto_7
    monitor-exit v0

    return v2

    :catchall_4
    move-exception p0

    .line 315
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method private synthetic lambda$initStorage$0(Ljava/lang/Integer;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 4

    .line 257
    iget-object p3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 258
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "./3GPP_IMS/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "initStorage: %s = [0] by default for LRA hVoLTE!"

    .line 257
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "0"

    invoke-virtual {p2, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Configname : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ","

    .line 1259
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1261
    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    .line 1262
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private parseNvList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1185
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "item"

    .line 1191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1196
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    .line 1197
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1199
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NV"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1203
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v0}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "./3GPP_IMS/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "configuration"

    .line 1209
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method private readAllOfDm(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "PATH"

    const-string v1, "VALUE"

    .line 319
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 326
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "omadm/./3GPP_IMS/"

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 331
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 332
    iget-object v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 333
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v5

    .line 334
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    .line 335
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "DeviceConfigManager"

    .line 339
    iget v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string/jumbo v7, "readData is null"

    invoke-static {p1, v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 344
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v6, "omadm"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_5

    .line 348
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 350
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 352
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 353
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 355
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 344
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 358
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_6
    return-object v2
.end method

.method private readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 367
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 371
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v4, "omadm/./3GPP_IMS/"

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "omadm"

    if-lez v0, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 382
    new-instance p3, Landroid/database/MergeCursor;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-array v1, v1, [Ljava/lang/String;

    .line 383
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 384
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    filled-new-array {p2, p0}, [Landroid/database/Cursor;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object p3

    .line 386
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 388
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 389
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private readSingleDm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 398
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 399
    iget-object p3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "DeviceConfigManager"

    if-eqz p3, :cond_0

    .line 402
    iget p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string/jumbo p3, "read from NV"

    invoke-static {v0, p1, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string p1, "omadm"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 409
    iget p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "read from DB : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p2, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string p2, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 412
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "PATH"

    const-string v2, "VALUE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private sendRawRequest(I)V
    .locals 7

    const-string p0, "phone"

    .line 557
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    const/16 v4, 0xf

    const/4 v6, 0x1

    aput-byte v4, v1, v6

    const/4 v4, 0x2

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    aput-byte v0, v1, v4

    if-ne p1, v6, :cond_1

    move v5, v6

    :cond_1
    int-to-byte v0, v5

    aput-byte v0, v1, v2

    .line 571
    :try_start_0
    invoke-interface {p0, v1, v3}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    const-string p0, "DeviceConfigManager"

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set testmode as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 574
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateNvList()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    const-string v1, "nv_init_done"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNvList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/Mno;->getMatchedNetworkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : nv list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected changePollListSubExp(I)V
    .locals 4

    .line 689
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "EnableRCS"

    const/4 v2, 0x0

    .line 696
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "EnableRCSchat"

    .line 697
    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 700
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "POLL_LIST_SUB_EXP"

    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    .line 702
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public deleteDm(Landroid/net/Uri;)I
    .locals 5

    .line 426
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 431
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeviceConfigManager"

    .line 432
    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v2, ""

    .line 434
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omadm"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/settings/NvStorage;->delete(Ljava/lang/String;)I

    :cond_1
    const-string v1, "^content://com.samsung.rcs.dmconfigurationprovider/[\\.\\w-_/]*"

    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result p1

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/"

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v2, p0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 446
    monitor-exit v0

    return p1

    .line 440
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a correct DmConfigurationProvider Uri"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected disableEabFeature()V
    .locals 3

    .line 683
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "EAB_SETTING"

    const-string v2, "0"

    .line 684
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"

    .line 685
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public dump()V
    .locals 3

    .line 1271
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DeviceConfigManager"

    const-string v2, "Dump of DeviceConfigManager:"

    .line 1272
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1275
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->dump()V

    .line 1276
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/SmsSetting;->dump()V

    .line 1277
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-eqz v1, :cond_0

    .line 1278
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/NvStorage;->dump()V

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dump()V

    .line 1281
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->dump()V

    .line 1282
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->dump()V

    .line 1283
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enableImsSwitch(Ljava/lang/String;Z)V
    .locals 1

    .line 970
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "volte"

    .line 974
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableVoLte(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "rcs"

    .line 976
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableRcs(Z)V

    goto :goto_0

    .line 979
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enable(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDebugConfigStorage:Lcom/sec/internal/ims/settings/DebugConfigStorage;

    return-object p0
.end method

.method protected getDefaultDmConfig(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/Map;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1222
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDmConfigXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string p0, "DeviceConfigManager"

    const-string p1, "can not find matched dmConfig.xml"

    .line 1224
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 1228
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, "default"

    if-eqz v0, :cond_1

    move-object p1, v8

    .line 1230
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    const-string v0, "configurations"

    .line 1234
    invoke-static {v6, v0}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1235
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "configuration"

    .line 1237
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1238
    invoke-interface {v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1239
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move-object v4, p2

    move-object v5, p3

    .line 1240
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readInitialConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/Map;)V

    goto :goto_1

    .line 1241
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move-object v4, p2

    move-object v5, p3

    .line 1242
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readInitialConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/Map;)V

    return-object v9

    .line 1245
    :cond_3
    invoke-static {v6}, Lcom/sec/internal/helper/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1248
    :cond_4
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object v9

    :catch_0
    move-exception p0

    .line 1252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v7
.end method

.method public getGcfInitRat()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "content://com.sec.ims.settings/gcfinitrat"

    .line 1133
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1134
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 1136
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rat"

    .line 1137
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1134
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 1140
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "DeviceConfigManager"

    const-string v1, "failed to get getGcfInitialRegistrationRat"

    .line 1141
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v0
.end method

.method getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getHasSim()Z
    .locals 3

    monitor-enter p0

    .line 908
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 909
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    .line 911
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMnoName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 886
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, ""

    .line 888
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_0

    .line 889
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 892
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 893
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMvnoName()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 897
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, ""

    .line 899
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_0

    .line 900
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    .line 903
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 904
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNvList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNvList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1152
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDmConfigXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "DeviceConfigManager"

    const-string p1, "can not find matched dmConfig.xml"

    .line 1154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "configurations"

    .line 1162
    invoke-static {v0, v1}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1163
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "configuration"

    .line 1166
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1168
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->matchConfigName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1170
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->parseNvList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 1172
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1175
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1177
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1181
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    return-object p0
.end method

.method getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    return-object p0
.end method

.method getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    return-object p0
.end method

.method protected initDmConfig(Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 728
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 730
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 732
    sget-object v3, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v3}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "./3GPP_IMS/"

    const-string v5, ""

    .line 733
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 734
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 735
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", "

    if-eqz v5, :cond_0

    .line 736
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDmConfig : Put into NV : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 737
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v5, "omadm/./3GPP_IMS/"

    .line 740
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDmConfig : Put into DB : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 744
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 748
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 749
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 752
    :cond_3
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 753
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string p1, "omadm"

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/settings/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_4
    return-void
.end method

.method protected initEabFeature()V
    .locals 4

    .line 664
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 667
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "EnableRCS"

    const/4 v2, 0x0

    .line 671
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "EnableRCSchat"

    .line 672
    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 675
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "EAB_SETTING"

    const-string v2, "1"

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"

    .line 677
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method protected initH265Hd720Payload()V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 644
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 649
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v1, :cond_1

    const-string v2, "mmtel"

    .line 650
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mmtel-video"

    .line 651
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720pPayload()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x70

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] initH265Hd720Payload: h265_hd720_payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 658
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "H265_720P"

    .line 659
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/H265_720P"

    .line 660
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    .line 645
    :cond_4
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v0, "initH265Hd720Payload: profileList null "

    const-string v1, "DeviceConfigManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected initIPsecFeature()V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 621
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 625
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v1, :cond_1

    const-string v2, "mmtel"

    .line 627
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mmtel-video"

    .line 628
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] initIPsecFeature: isIPsecEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 635
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_4

    const-string v0, "1"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    :goto_1
    const-string v2, "IPSEC_ENABLED"

    .line 636
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/IPSEC_ENABLED"

    .line 637
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    .line 622
    :cond_5
    :goto_2
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v0, "initIPsecFeature: profileList null "

    const-string v1, "DeviceConfigManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected initSmsOverImsFeature()V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "sms_over_ip_indication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 612
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] initSmsOverImsFeature: isSmsOverIpNetworkIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v0, p0}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    return-void
.end method

.method protected initVoLTEFeature()V
    .locals 4

    .line 579
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 585
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 586
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "EnableVoLTE"

    const/4 v2, 0x0

    .line 597
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "EnableVoiceoverWIFI"

    .line 598
    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 601
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "VOLTE_ENABLED"

    const-string v2, "1"

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/VOLTE_ENABLED"

    .line 603
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 451
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 456
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 457
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 459
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 464
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    .line 467
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 468
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "/"

    .line 472
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    const-string v5, "/"

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    const-string v6, "DeviceConfigManager"

    .line 477
    iget v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dmItem : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 480
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "omadm/./3GPP_IMS/"

    .line 483
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "./3GPP_IMS/"

    .line 484
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "omadm/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 489
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "omadm/./3GPP_IMS/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "IMS_TEST_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "persist.sys.ims_test_mode"

    .line 496
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 495
    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_1

    .line 498
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->sendRawRequest(I)V

    goto/16 :goto_0

    .line 505
    :cond_8
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 506
    iget-object p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    const-string v3, "omadm"

    invoke-virtual {p2, v3, v1}, Lcom/sec/internal/ims/settings/NvStorage;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 509
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 510
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 512
    :cond_a
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2

    .line 528
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/String;

    const-string p3, "NODATA"

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "NODATA"

    aput-object p2, p1, p4

    .line 532
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p5, :cond_1

    .line 541
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readAllOfDm(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 544
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readMultipleDm([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 547
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->readSingleDm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 551
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 552
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public queryGcfConfig()Landroid/database/Cursor;
    .locals 2

    .line 946
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 947
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 949
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "GCF_CONFIG_ENABLE"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 948
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1023
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsServiceSwitchTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1026
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    .line 1027
    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryImsSwitch: name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DeviceConfigManager"

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v5, "volte"

    .line 1029
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1031
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isVoLteEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1030
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v5, "rcsswitch"

    .line 1033
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1035
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isRcsSwitchEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1034
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "rcs"

    .line 1037
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1039
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isRcsEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1038
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v5, "ims"

    .line 1041
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1043
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1042
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v5, "defaultmsgappinuse"

    .line 1045
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1047
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isDefaultMessageAppInUse()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1046
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1051
    iget-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    .line 1050
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 996
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 997
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 1000
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 1001
    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryImsUserSetting: name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DeviceConfigManager"

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1003
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1004
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 1005
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVoiceCallType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1004
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 1007
    :cond_0
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1008
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 1009
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVideoCallType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1008
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 1011
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 1012
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_2

    .line 1013
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 1014
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getRcsUserSetting()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1013
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method readInitialConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Landroid/util/SparseArray;Landroid/content/ContentValues;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "omadm/./3GPP_IMS/nv_init_done"

    .line 149
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    .line 153
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v3, "item"

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 155
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "configuration"

    .line 157
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    sget-object v2, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "./3GPP_IMS/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "omadm/./3GPP_IMS/"

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 168
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p3, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found new item. Read from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public resetImsSwitch()V
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->doInit()V

    return-void
.end method

.method public restoreDefaultImsProfile()Z
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->resetToDefault()V

    const/4 p0, 0x1

    return p0
.end method

.method public setImsUserSetting(Ljava/lang/String;I)V
    .locals 2

    .line 954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 958
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 960
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVoiceCallType(Ljava/lang/String;I)V

    goto :goto_0

    .line 962
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVideoCallType(Ljava/lang/String;I)V

    goto :goto_0

    .line 964
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setRcsUserSetting(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 0

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 518
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method

.method public updateDnsBlock(Landroid/content/ContentValues;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "DNS_BLOCK_ENABLE"

    .line 935
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 938
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string p1, "net.tether.always"

    invoke-static {p1, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 940
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string p1, "DNS_BLOCK_ENABLE is null"

    const-string v0, "DeviceConfigManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateDtLocUserConsent(Landroid/content/ContentValues;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1117
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "dtlocation"

    .line 1121
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1122
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1124
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v2, "dtlocuserconsent"

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1126
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1127
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateGcfConfig(Landroid/content/ContentValues;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 920
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GCF_CONFIG_ENABLE"

    .line 924
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 926
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string p1, "GCF_CONFIG_ENABLE is null"

    const-string v0, "DeviceConfigManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 930
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateGcfInitRat(Landroid/content/ContentValues;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1100
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "rat"

    .line 1104
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "DeviceConfigManager"

    const-string/jumbo v1, "updateGcfInitRat is empty"

    .line 1106
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 1109
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const-string v1, "gcf_init_rat"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1111
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1112
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1113
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateImsSwitchByDynamicUpdate()V
    .locals 2

    .line 988
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCF"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->updateSwitchByDynamicUpdate()V

    return-void

    .line 989
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v0, "Skip updateSwitchByDynamicUpdate during GCF"

    const-string v1, "DeviceConfigManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateMno(Landroid/content/ContentValues;)V
    .locals 13

    monitor-enter p0

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 759
    sget-object v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "mnoname"

    .line 760
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hassim"

    .line 761
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 763
    iget-object v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 764
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    const-string v5, "mvnoname"

    .line 765
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMvnoName:Ljava/lang/String;

    .line 772
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v6, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v5, v6, :cond_0

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_0

    .line 773
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string p1, "DeviceConfigManager"

    .line 774
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v2, "Skip updating config modules when SIM ejected"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 775
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 778
    :try_start_2
    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :goto_0
    iput-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mLastSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 781
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mProfileCache:Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->updateMno(Landroid/content/ContentValues;)Z

    .line 784
    iget-object v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mUserConfigStorage:Lcom/sec/internal/ims/settings/UserConfigStorage;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/settings/UserConfigStorage;->reset(Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v1

    .line 788
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->updateMno(Landroid/content/ContentValues;)Z

    move-result v5

    .line 789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",UPD MNO:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x10010000

    invoke-static {v7, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    .line 792
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz v9, :cond_2

    .line 793
    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    goto :goto_1

    .line 796
    :cond_2
    new-instance v9, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v9}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mDmStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 799
    :goto_1
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    if-eqz v9, :cond_3

    .line 800
    invoke-virtual {v9}, Lcom/sec/internal/ims/settings/NvStorage;->close()V

    .line 801
    iput-object v6, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mNvStorage:Lcom/sec/internal/ims/settings/NvStorage;

    .line 805
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initStorage()Z

    .line 808
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v9}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->unregisterObserver()V

    .line 809
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v9, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->updateServiceSwitch(Landroid/content/ContentValues;)V

    .line 811
    iget-object v9, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v10, "enableServiceVolte"

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "imsSwitchType"

    .line 813
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    :cond_4
    const/4 v10, -0x1

    if-eqz v2, :cond_5

    .line 815
    iget-object v11, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 816
    invoke-static {v11, v10, v12}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v11

    if-eq v11, v10, :cond_5

    if-nez v9, :cond_5

    move v11, v8

    goto :goto_2

    :cond_5
    move v11, v7

    :goto_2
    if-eqz v2, :cond_6

    .line 819
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    .line 820
    invoke-static {v2, v10, v12}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v2

    if-eq v2, v10, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v10, "enableServiceVilte"

    .line 821
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v8

    goto :goto_3

    :cond_6
    move v2, v7

    .line 823
    :goto_3
    invoke-virtual {v1, v11, v2, v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->resetUserSettingAsDefault(ZZZ)V

    if-nez v9, :cond_7

    .line 825
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v9, "enableServiceSmsip"

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mImsServiceSwitch:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    const-string v9, "enableServiceVowifi"

    .line 826
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsSwitchEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 827
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "show_regi_info_in_sec_settings"

    .line 828
    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 829
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    .line 833
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 834
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initSmsOverImsFeature()V

    .line 835
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initIPsecFeature()V

    .line 836
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    .line 837
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->initH265Hd720Payload()V

    .line 842
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ss_callwaiting_by_network"

    .line 843
    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 844
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    .line 845
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 846
    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    if-eq v2, v8, :cond_9

    const-string/jumbo v2, "volte_call_waiting"

    goto :goto_4

    :cond_9
    const-string/jumbo v2, "volte_call_waiting_slot2"

    .line 845
    :goto_4
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_a

    goto :goto_5

    :cond_a
    move v8, v7

    :goto_5
    if-nez v8, :cond_b

    .line 848
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string v3, "enable_call_wait"

    invoke-static {v1, v2, v3, v8}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    const-string v1, "DeviceConfigManager"

    .line 850
    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TerminalBasedCallWaiting should follow DB, update to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    :cond_b
    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    move-result v1

    if-nez v5, :cond_c

    if-eqz v1, :cond_d

    .line 856
    :cond_c
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] updateMno: notifyUpdated: GlobalSettings("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), RcsPolicy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 859
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 858
    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 862
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mSmsSetting:Lcom/sec/internal/ims/settings/SmsSetting;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/settings/SmsSetting;->updateMno(Landroid/content/ContentValues;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 864
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 867
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_f

    .line 868
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGcfInitRat()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfigManager["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "init rat : nr,lte,wifi"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "rat"

    const-string v2, "nr,lte,wifi"

    .line 872
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    .line 876
    :cond_f
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    :try_start_3
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_10

    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_11

    :cond_10
    const-string p1, "persist.sys.ims_test_mode"

    .line 879
    invoke-static {p1, v7}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 880
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->sendRawRequest(I)V

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno: send IMS_TESTMODE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 883
    :cond_11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 876
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateProvisioningProperty(Landroid/content/ContentValues;)V
    .locals 3

    const-string/jumbo v0, "status"

    .line 1063
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfigManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProvisioningProperty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1066
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string/jumbo p1, "status is null."

    const-string v0, "DeviceConfigManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1069
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1070
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 1074
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1076
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {p1, v1, p0}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method public updateWificallingProperty(Landroid/content/ContentValues;)V
    .locals 2

    const-string/jumbo v0, "status"

    .line 1085
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1087
    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    const-string/jumbo p1, "status is null."

    const-string v0, "DeviceConfigManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1090
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1091
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1093
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {p1, v1, p0}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iget p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/constants/ims/VowifiConfig;->setEnabled(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
