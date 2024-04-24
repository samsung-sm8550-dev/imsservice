.class public Lcom/sec/internal/ims/core/ImsIconManager;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;,
        Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;,
        Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;,
        Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    }
.end annotation


# static fields
.field private static final CMC_SD_ICON:Ljava/lang/String; = "stat_sys_phone_call_skt"

.field private static final CROSS_SIM_ICON_NAME:[Ljava/lang/String;

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field private static final DUAL_IMS_NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_hd"

.field private static final INTENT_ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final INTENT_ACTION_SILENT_REDIAL:Ljava/lang/String; = "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsIconManager"

.field private static final NOTIFICATION_BUILDER_ID:I = -0x6687

.field private static final NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_ctc"

.field private static final PRIMARY_CHANNEL:Ljava/lang/String; = "imsicon_channel"

.field private static final RCS_ICON_DESCRIPTION:Ljava/lang/String; = "RCS"

.field protected static final RCS_ICON_NAME:Ljava/lang/String; = "stat_notify_rcs_service_avaliable"

.field protected static final RCS_ICON_NAME_CHN:Ljava/lang/String; = "stat_notify_rcs"

.field protected static final RCS_ICON_NAME_DUAL:[Ljava/lang/String;

.field protected static final RCS_ICON_SLOT:Ljava/lang/String; = "com.samsung.rcs"

.field protected static final VOLTE_ICON_SLOT_HEAD:Ljava/lang/String; = "ims_volte"

.field private static final VoLTE_ICON_WFC_WARNING_NAME:Ljava/lang/String; = "stat_notify_wfc_warning"

.field static mShowVoWIFILabel:[Z

.field static mVowifiOperatorLabel:[Ljava/lang/String;

.field static mVowifiOperatorLabelOngoing:[I

.field static mWifiSubTextOnLockScreen:[Ljava/lang/String;


# instance fields
.field protected VOLTE_ICON_SLOT:Ljava/lang/String;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field protected mCurrentInRoaming:Z

.field protected mCurrentNetworkType:I

.field mCurrentPhoneState:I

.field protected mCurrentServiceState:I

.field protected mCurrentVoiceRatType:I

.field mDisplayDensity:I

.field mForceRefreshIcon:Z

.field final mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsDebuggable:Z

.field mIsDuringEmergencyCall:Z

.field mIsFirstVoLTEIconShown:Z

.field mIsSilentRedialInProgress:Z

.field mIsVonrEnabled:Z

.field mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mLastVoLTEResourceId:I

.field mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mMno:Lcom/sec/internal/constants/Mno;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mOmcCode:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mPhoneId:I

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mUseDualVolteIcon:Z

.field final mVolteNotiObserver:Landroid/database/ContentObserver;

.field private final simSwitchChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$c7oVXVsxmd-EEIaYvIebshYMybo(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isSuspend$1(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c_CcJ08Gc4J0dq5p5ZJwjSTS18o(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$getVolteIconSlot$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ic4LJjJfqNamAXa-WYxKp7Z-mw0(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isCounterSlotRcsTransferable$2(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "stat_notify_rcs_service_avaliable_2"

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable_dual"

    const-string/jumbo v2, "stat_notify_rcs_service_avaliable_1"

    .line 77
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const-string/jumbo v0, "stat_sys_cross_sim_calling1_spr"

    const-string/jumbo v1, "stat_sys_cross_sim_calling2_spr"

    .line 84
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 133
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    const/4 v0, 0x0

    .line 134
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    const-string v0, ""

    .line 135
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 136
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 5

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 129
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 130
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 138
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 142
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 143
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 145
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 146
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 274
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->simSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 1303
    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/ImsIconManager$2;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1341
    new-instance v2, Lcom/sec/internal/ims/core/ImsIconManager$3;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$3;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    .line 235
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    .line 238
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 240
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 241
    iput-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 243
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 249
    iput p5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 250
    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p2}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;ILcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    const-string/jumbo p1, "volte_noti_settings"

    .line 253
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

    .line 257
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 258
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "phone1_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "phone2_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "esim_phone_on_1"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 271
    invoke-virtual {p0, p4, p5}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method private isSuspend(Landroid/net/Network;)Z
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda3;-><init>()V

    .line 670
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    .line 671
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVolteIconSlot$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/Integer;
    .locals 0

    .line 301
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isEsim()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isCounterSlotRcsTransferable$2(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 905
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isSuspend$1(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0x15

    .line 670
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method checkKORVolteIcon()Z
    .locals 8

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1100
    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    const-string v7, "mmtel"

    .line 1101
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1102
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1103
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 1108
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1110
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SimManager is null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1113
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1120
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-nez v0, :cond_5

    .line 1121
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : network is unknown."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1124
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "ril.currentplmn"

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1125
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1126
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : on roaming. Hide VoLTE icon"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1129
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKORVolteIcon : on roaming. Volte featuremask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 1134
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIconOperatorSpecifics(Z)Z

    move-result p0

    return p0

    .line 1116
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SIM state is unknown or absent"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method checkKORVolteIconOperatorSpecifics(Z)Z
    .locals 8

    .line 1138
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1140
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : subId is invalid, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1143
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v0

    .line 1144
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_5

    .line 1145
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v4, -0x1

    invoke-static {p1, v4, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 1149
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1150
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "checkKORVolteIconOperatorSpecifics : Settings not found, return VOLTE_PREFERRED"

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_0

    .line 1154
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIconOperatorSpecifics : Settings not found"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, p1

    .line 1158
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkKORVolteIconOperatorSpecifics : KT device and KT sim, ServiceState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voicecall_type = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    const/4 p0, 0x2

    if-ne v4, p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    .line 1161
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_6

    .line 1162
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : SIM card is LGT, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1164
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1167
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_7

    .line 1168
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1171
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1174
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volte_noti_settings"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1177
    :catch_0
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "checkKORVolteIconOperatorSpecifics : volte_noti_settings is not exists"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_1

    :cond_7
    move v2, v1

    :cond_8
    move v4, v3

    .line 1185
    :goto_1
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkKORVolteIconOperatorSpecifics : volte_noti_settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v4, v3, :cond_9

    if-eqz p1, :cond_9

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method checkSameVoWIFILabel()Z
    .locals 4

    .line 875
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 877
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget v3, v1, v2

    aget v1, v1, v0

    if-ne v3, v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 878
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p0, v1, p0

    aget-object v0, v1, v0

    .line 879
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearIcon(I)V
    .locals 1

    .line 332
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowRcsIcon(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.samsung.rcs"

    .line 333
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 336
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 337
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    :cond_1
    return-void
.end method

.method fillWifiLabel()V
    .locals 8

    .line 853
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    const/4 v3, 0x0

    .line 854
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 856
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v4, "vowifi_subtext_on_lockscreen"

    const-string v5, ""

    .line 857
    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 859
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v6, "vowifi_operator_label"

    .line 860
    invoke-static {v1, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 862
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 864
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 865
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, p0

    .line 867
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 868
    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 870
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    .line 871
    invoke-static {p0, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-void
.end method

.method getCrossSimIconName()Ljava/lang/String;
    .locals 4

    .line 1194
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v0, v0, p0

    .line 1195
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrossSimIconName() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;
    .locals 4

    .line 1236
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const-string v1, "ims_volte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1237
    :goto_0
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-eqz v3, :cond_8

    .line 1239
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$4;->$SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const-string v3, ""

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    move-object p1, v3

    goto :goto_1

    .line 1247
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vo5g_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1244
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vowifi_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1241
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volte_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1254
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1255
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1259
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1262
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo v3, "stat_sys_phone_call"

    goto :goto_2

    .line 1264
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string/jumbo v3, "stat_sys_phone_call_skt"

    goto :goto_2

    .line 1266
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string/jumbo v3, "stat_sys_phone_call_kt"

    goto :goto_2

    :cond_7
    const-string/jumbo v3, "stat_sys_phone_call_lgt"

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "stat_notify_volte_service_avaliable"

    :cond_9
    :goto_2
    return-object v3
.end method

.method public getDuringEmergencyCall()Z
    .locals 0

    .line 1380
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    return p0
.end method

.method getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 0

    .line 766
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method getVo5gIconName()Ljava/lang/String;
    .locals 2

    .line 1204
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vo5g_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconName()Ljava/lang/String;
    .locals 2

    .line 1210
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "stat_sys_phone_call"

    goto :goto_0

    .line 1215
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "stat_sys_phone_call_skt"

    goto :goto_0

    .line 1217
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "stat_sys_phone_call_kt"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "stat_sys_phone_call_lgt"

    goto :goto_0

    .line 1223
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "volte_regi_icon_id"

    const-string v1, ""

    .line 1224
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "stat_notify_volte_service_avaliable"

    :goto_0
    return-object p0
.end method

.method getVolteIconSlot()Ljava/lang/String;
    .locals 7

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;-><init>()V

    .line 301
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;-><init>()V

    .line 302
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    .line 305
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolteIconSlot: eSIM Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", active SIM count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "ims_volte"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x2

    const-string v5, ""

    const-string v6, "2"

    if-ne v0, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 314
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda2;-><init>()V

    .line 315
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    move-object v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v0, v4, :cond_4

    .line 320
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 321
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 322
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 761
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    .line 762
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method getVowifiIconName()Ljava/lang/String;
    .locals 2

    .line 1200
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vowifi_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method hasVolteService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2

    .line 843
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 844
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "GenericIR92_US:Cellcom"

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "mmtel"

    .line 845
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "mmtel-video"

    .line 846
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public initConfiguration(Lcom/sec/internal/constants/Mno;I)V
    .locals 2

    .line 287
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 288
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 290
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    const-string/jumbo v0, "separate_vo5g_icon"

    .line 291
    invoke-static {p2, v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 292
    invoke-interface {v0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semIsVoNrEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 293
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 294
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->clearIcon(I)V

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconSlot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    .line 296
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method isCounterSlotRcsTransferable()Z
    .locals 4

    .line 902
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 903
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 904
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    .line 905
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 907
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    :cond_3
    return v0
.end method

.method isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 695
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 697
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 698
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isInSvcAndOtherSimIdle()Z
    .locals 7

    .line 915
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 916
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result p0

    xor-int/2addr p0, v2

    .line 917
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 918
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "isInSvcAndOtherSimIdle: In SVC %s, Other SIM Idle %s"

    .line 917
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method isOtherSimInCallStatus()Z
    .locals 3

    .line 923
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 924
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v2, "isOtherSimInCallStatus: DSDA not need to check"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 928
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 929
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method isServiceAvailable(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ATT"

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mmtel-video"

    const-string v2, "mmtel"

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_7

    const-string v0, "APP"

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    .line 362
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    return v5

    .line 366
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 367
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 369
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v4

    .line 370
    :cond_4
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 371
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4

    .line 344
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    return v5

    .line 348
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 349
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p0, v3, :cond_a

    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 352
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    move v4, v5

    :cond_9
    return v4

    :cond_a
    return v5
.end method

.method isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 675
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->hasVolteService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mmtel"

    .line 676
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mmtel-video"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 680
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v0

    .line 682
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result p1

    .line 683
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRegiRat ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], getCurrentNetwork ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 685
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method isVoWiFiRegistered(I)Z
    .locals 6

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 885
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 886
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mmtel"

    .line 887
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mmtel-video"

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 888
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 889
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 890
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 891
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 892
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "isVoWIFIRegistered"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method needDisplayVo5gIcon()Z
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "separate_vo5g_icon"

    .line 703
    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method needShowNoCTCVoLTEIcon()Z
    .locals 5

    .line 383
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 384
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 385
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v2

    .line 388
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_1

    .line 390
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 391
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 393
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 394
    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 400
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowNoCTCVoLTEIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method needShowRcsIcon(I)Z
    .locals 1

    .line 1384
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1386
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "needShowRcsIcon: true"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerPhoneStateListener()V
    .locals 3

    .line 1277
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "registerPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1279
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public setCurrentNetworkType(I)V
    .locals 0

    .line 1288
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    return-void
.end method

.method public setCurrentRoamingState(Z)V
    .locals 0

    .line 1300
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    return-void
.end method

.method public setCurrentServiceState(I)V
    .locals 0

    .line 1292
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    return-void
.end method

.method public setCurrentVoiceRatType(I)V
    .locals 0

    .line 1296
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    return-void
.end method

.method public setDuringEmergencyCall(Z)V
    .locals 3

    .line 1368
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 1370
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_0
    return-void
.end method

.method protected setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "drawable"

    .line 1011
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1014
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1015
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    if-eq v1, v0, :cond_0

    .line 1016
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string p3, "com.samsung.rcs"

    .line 1019
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "RCS"

    :goto_0
    if-nez v2, :cond_2

    .line 1027
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_3

    .line 1029
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1031
    invoke-virtual {v1, p1, v0, v3, p3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1033
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIconSlot: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (id: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1036
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    .line 1023
    :cond_4
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong slot name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V
    .locals 7

    const-string v0, "!@Boot: "

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_0

    .line 1053
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.rcs"

    .line 1056
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1057
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_2

    .line 1058
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 1061
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq p2, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v4, :cond_3

    .line 1063
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "RCS not registered on this SIM. Skip refresh."

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1071
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_7

    .line 1073
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1074
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p2, v4, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v1, p1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1076
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "]"

    const-string v5, ": ["

    const-string/jumbo v6, "setIconVisibility: "

    if-eqz v1, :cond_6

    .line 1077
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    if-nez v1, :cond_6

    if-ne p2, v4, :cond_6

    .line 1078
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 1079
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1083
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1086
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void

    .line 1067
    :cond_8
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong slot name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setVo5gIcon(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1375
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 1376
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    return-void
.end method

.method showDualVolteIcon()Z
    .locals 9

    .line 1350
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    .line 1351
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    const-string v2, "persist.ril.esim.slotswitch"

    const-string v3, ""

    .line 1352
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tsds2"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1353
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1355
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportEsim"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1356
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v5, "android.hardware.telephony.euicc"

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 1357
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "supportDualVolte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", configESimSlotSwitch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ESim Features - floating: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", csc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", eUicc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", activeSimCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method declared-synchronized showWifiRegistrationStateQuickPanel(IZ)V
    .locals 8

    monitor-enter p0

    .line 943
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v2, v0, v1

    if-ne v2, p2, :cond_0

    .line 944
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to update mShowVoWIFILabel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]  aready ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :try_start_1
    const-string v3, "imsicon_channel_both"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "imsicon_channel_0"

    goto :goto_0

    :cond_2
    const-string v3, "imsicon_channel_1"

    :goto_0
    const/16 v4, -0x6687

    const/4 v5, 0x0

    if-eq p1, v2, :cond_3

    .line 957
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "imsicon_channel_both"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 961
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification VoWiFi tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] in quick panel ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    aput-boolean p2, v0, v1

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    move p1, v0

    .line 971
    :goto_1
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "imsicon_channel"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 973
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 974
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    if-eqz p2, :cond_7

    .line 977
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v2, "imsicon_channel"

    invoke-direct {p2, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "drawable"

    const-string/jumbo v2, "stat_notify_wfc_warning"

    .line 978
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 979
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    .line 980
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 981
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 983
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "string"

    .line 984
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 985
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 987
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 990
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    aget p1, v1, p1

    if-ne p1, v0, :cond_6

    .line 991
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 994
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 995
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    .line 997
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 6

    .line 770
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "show_rcs_regi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 772
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsIconVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 779
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    .line 780
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v3, "com.samsung.rcs"

    if-eqz p2, :cond_1

    .line 781
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_7

    const-string/jumbo p2, "stat_notify_rcs"

    .line 782
    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 784
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz p2, :cond_7

    .line 785
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 786
    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 787
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 788
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_4

    .line 789
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 790
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 795
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 796
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 801
    :cond_5
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable"

    if-ne p1, p2, :cond_6

    .line 802
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 804
    :cond_6
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 805
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    .line 811
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method

.method public updateRegistrationIcon()V
    .locals 9

    .line 516
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 519
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    move-result-object v1

    .line 521
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 522
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    move-result-object v0

    .line 524
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRegistrationIcon: VoLTE [show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] VoWiFi [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] RCS [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] CROSS SIM [regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] (RcsNetworkSuspended: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsNetworkSuspended()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ") (VoNREnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCmcRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 533
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 534
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    .line 535
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    return-void
.end method

.method updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .locals 9

    .line 602
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;-><init>()V

    .line 603
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    .line 604
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 606
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo p2, "updateRegistrationStatus : subId is invalid"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 609
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 611
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 620
    :cond_2
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_b

    aget-object v5, p1, v4

    .line 623
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 624
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    .line 625
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v7

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v3

    .line 627
    :goto_1
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 628
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .line 629
    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCrossSimRegistered(Z)V

    .line 632
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 633
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    .line 634
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 635
    :cond_5
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCmcRegistered(Z)V

    .line 638
    :cond_6
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 639
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result v5

    xor-int/2addr v5, v2

    xor-int/lit8 v6, v5, 0x1

    .line 640
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsNetworkSuspended(Z)V

    .line 642
    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_7

    .line 643
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v3

    .line 645
    :cond_8
    :goto_2
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsRegistered(Z)V

    .line 648
    :cond_9
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isAllRegistered()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 653
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 654
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_d

    .line 655
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "APT special requirement"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_c

    move v3, v2

    .line 657
    :cond_c
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    xor-int/lit8 p0, v3, 0x1

    .line 658
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    goto :goto_4

    .line 659
    :cond_d
    sget-object p2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_e

    .line 660
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "Vodafone AUS special requirement"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    :cond_e
    :goto_4
    return-object v0
.end method

.method updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .locals 10

    .line 540
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;-><init>()V

    const/4 v1, 0x1

    .line 541
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 542
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_vowifi_regi_icon"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 543
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 545
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_volte_regi_icon"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 546
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    const-string/jumbo v5, "ro.product.first_api_level"

    .line 548
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    if-eqz v3, :cond_0

    const-string v5, "GenericIR92_US:Cellcom"

    .line 549
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DPAC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->GTA:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ITE:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ASTCA_US:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6, v7, v8, v9}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 550
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "Volte RegistrationIcon: need to turn off"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v4

    .line 554
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v5, "remove_icon_nosvc"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 556
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    .line 558
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "Volte/RCS RegistrationIcon: turned off."

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 562
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 563
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 567
    :cond_4
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "hide_vowifi_icon_when_cs_call"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 568
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v2, :cond_5

    .line 569
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "VoWIFI Special Req.: Hide vowifi icon when CSFB"

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 570
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    :cond_5
    const-string v2, "DCM"

    .line 574
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 575
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v5, :cond_6

    .line 576
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 580
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 581
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 582
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 585
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "KOR requirement"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_8
    if-ne v3, v1, :cond_a

    .line 591
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 592
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 p1, 0x12

    if-eq p0, p1, :cond_a

    .line 594
    :cond_9
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_a
    return-object v0
.end method

.method updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 3

    .line 818
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "vowifi_operator_label"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 820
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->fillWifiLabel()V

    .line 821
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkSameVoWIFILabel()Z

    move-result p1

    .line 822
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    if-eqz p1, :cond_2

    .line 825
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiRegistered(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 p2, -0x1

    .line 826
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    return-void

    .line 829
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    :cond_3
    return-void
.end method

.method protected updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 6

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 713
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    const/high16 v1, 0x7f070000

    const v2, 0x7f070001

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 714
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_3

    .line 717
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    .line 719
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stat_sys_phone_no_volte_chn_hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 724
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 725
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getCrossSimIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 727
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 728
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVo5gIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 730
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 731
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVowifiIconName()Ljava/lang/String;

    move-result-object v3

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 734
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 735
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_no_volte_chn_ctc"

    goto :goto_3

    :cond_9
    move-object v0, v3

    :goto_3
    if-nez v3, :cond_a

    const-string v3, ""

    .line 745
    :cond_a
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz v1, :cond_b

    if-eqz p3, :cond_b

    .line 747
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_call_skt"

    .line 749
    :cond_b
    sget-object p3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolteIcon: iconNametoSet="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 750
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 751
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p3, v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_c
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method
