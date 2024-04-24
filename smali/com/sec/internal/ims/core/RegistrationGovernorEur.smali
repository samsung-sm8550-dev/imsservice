.class public Lcom/sec/internal/ims/core/RegistrationGovernorEur;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorEur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;
    }
.end annotation


# static fields
.field private static final DELAYED_DEREGISTER_TIMER_MS:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnEur"

.field protected static final REGI_RETRY_LIMIT:I = 0x4


# instance fields
.field private checkEndPcscfList:Z

.field protected mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field private mDailyReRegisterIntentReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;

.field protected mHasPendingReRegistration:Z

.field private mIsRetryAbandon:Z

.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNeedDirectRetry:Z

.field protected mPcscfRetryTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegiRetryCount:I

.field mVolteOffExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$T0i-_NTvXBl-Fj2G2Q9Yt0nuKiE(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->lambda$onVolteSettingChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ozDCcf3i5BGiTvmwZ2Y8HVKkTMM(Ljava/util/concurrent/ScheduledFuture;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->lambda$onVolteSettingChanged$0(Ljava/util/concurrent/ScheduledFuture;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zZhnSYCRrDGaVtV4wFW689vp0zE(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->lambda$onVolteSettingChanged$1(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryCount:I

    .line 79
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsRetryAbandon:Z

    .line 81
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 82
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    .line 83
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 85
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHasPendingReRegistration:Z

    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mVolteOffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p3, 0x1

    .line 91
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckSrvcc:Z

    .line 92
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckLocationSetting:Z

    .line 94
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p4, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    sget-object p5, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object p6, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    sget-object p7, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    filled-new-array {p4, p5, p6, p7}, [Lcom/sec/internal/constants/Mno;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    .line 97
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 98
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p4, Lcom/sec/internal/constants/Mno;->EDF:Lcom/sec/internal/constants/Mno;

    if-eq p2, p4, :cond_1

    .line 99
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHandlePcscfOnAlternativeCall:Z

    .line 102
    :cond_1
    sget-object p3, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p2

    const/16 p3, 0xb

    if-ne p2, p3, :cond_2

    const-string p2, "RegiGvnEur"

    const-string p3, "Registering receiver for daily re-registration"

    .line 103
    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p2, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mDailyReRegisterIntentReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;

    .line 105
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.ACTION_CHECK_REGISTRATION_DAILY"

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mDailyReRegisterIntentReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method private isDataAllowed()Z
    .locals 6

    .line 1048
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1052
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 1053
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getbySubId(Landroid/content/Context;II)I

    move-result v3

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1054
    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    .line 1055
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    .line 1056
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result p0

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataAllowed: isRoaming = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDataOn = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDataRoamingOn ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RegiGvnEur"

    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    move v1, v5

    :cond_5
    return v1
.end method

.method private isGlsEnabled(I)Z
    .locals 1

    .line 801
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v0, "geolocPushAuth"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onVolteSettingChanged$0(Ljava/util/concurrent/ScheduledFuture;)Z
    .locals 0

    .line 761
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onVolteSettingChanged$1(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    const/4 v0, 0x0

    .line 762
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method

.method private synthetic lambda$onVolteSettingChanged$2()V
    .locals 1

    .line 768
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->sendVolteState(IZ)V

    return-void
.end method


# virtual methods
.method protected addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    const-string v2, "RegiGvnEur"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 330
    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string p0, "ipv4 address found. RCS service prefers ipv4."

    .line 337
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 340
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 343
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p0, "Ipv4 pcscf addr isn\'t exist - for RCS : "

    .line 348
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 351
    :cond_4
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 352
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p3, "ipv4"

    invoke-static {v2, p0, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 355
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 356
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    return-object p2
.end method

.method adjustTmobileErrorTreatment(Lcom/sec/ims/util/SipError;J)V
    .locals 3

    .line 988
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 989
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 990
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 991
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 994
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v1, :cond_3

    .line 997
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p2, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 998
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 999
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 1000
    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1001
    :cond_2
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    const/4 p1, 0x0

    .line 1002
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    :cond_3
    return-void
.end method

.method public allowRoaming()Z
    .locals 4

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RegiGvnEur"

    if-eqz v0, :cond_0

    .line 832
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "allowRoaming: Emergency profile. Return true."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->BTOP:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isInternationalRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 840
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "allowRoaming: Domestic roaming. Return true."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 845
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result p0

    return p0
.end method

.method applyEntitlementStatus(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 526
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "mmtel"

    const-string v1, "mmtel-video"

    const/16 v2, 0x12

    const-string/jumbo v3, "smsip"

    const-string v4, "RegiGvnEur"

    if-eq p2, v2, :cond_2

    .line 529
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForVoLte(I)Z

    move-result v5

    const-string v6, "SMS ES not ready"

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoLteEntitlementStatus(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 530
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v7, "VoLTE ES not ready"

    invoke-static {v4, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    invoke-virtual {p0, p1, v1, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, p1, v0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForSMSoIp(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 535
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v7, "SMS ES not ready because of VoLTE ES"

    invoke-static {v4, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    invoke-virtual {p0, p1, v3, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForSMSoIp(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getSMSoIpEntitlementStatus(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    invoke-virtual {p0, p1, v3, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-ne p2, v2, :cond_4

    .line 547
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v2}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForVoWiFi(I)Z

    move-result p2

    const-string v2, "SMS ES not ready at IWLAN"

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v5}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoWiFiEntitlementStatus(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 548
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v5, "VoWiFi ES not ready"

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 549
    invoke-virtual {p0, p1, v1, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, p1, v0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForSMSoIp(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 553
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "SMS ES not ready because of VoWiFi ES at IWLAN"

    invoke-static {v4, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForSMSoIp(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getSMSoIpEntitlementStatus(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 559
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v4, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method applyRcsSwitch(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, p1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 488
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDataAllowed()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RegiGvnEur"

    if-nez v0, :cond_1

    const/16 v0, 0x12

    if-eq p4, v0, :cond_1

    .line 489
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "Mobile off!"

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p4

    if-lez p4, :cond_1

    .line 492
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p4

    array-length v0, p4

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p4, v4

    .line 493
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 494
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_0

    const-string v6, "MobileOff"

    .line 495
    invoke-virtual {p0, p3, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p3, p4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 503
    iget p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-direct {p0, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isGlsEnabled(I)Z

    move-result p3

    .line 504
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isEcEnabled(I)Z

    move-result p4

    if-eqz p1, :cond_5

    .line 505
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 506
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 507
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 508
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 509
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "by switch and DM + service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v6, "gls"

    .line 510
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "skip service "

    if-eqz v6, :cond_2

    if-nez p3, :cond_2

    .line 511
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , isEnableGls is "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v6, "ec"

    .line 513
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez p4, :cond_3

    .line 514
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , isEnableEc is "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 517
    :cond_3
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 569
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_3

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSmsoipUsagePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Irrespective_of_voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RegiGvnEur"

    if-eqz v0, :cond_2

    .line 578
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "SMSoIP can be used even if VoPS not supported. just filtering mmtel, mmtel-video."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    .line 579
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mmtel"

    .line 580
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "by VoPS policy: remove all service"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public blockImmediatelyUpdateRegi()Z
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkAvailableRat(I)Z
    .locals 6

    .line 682
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 683
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "isReadyToRegister: No PS Voice capable RAT"

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_PS_VOICE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected checkCallStatus()Z
    .locals 6

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 654
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 655
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 656
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isSrvccCase()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnEur"

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_SWITZERLAND:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    .line 658
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 659
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "isReadyToRegister: SRVCC case"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 660
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "isReadyToRegister: Skip deregister SRVCC"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 665
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "isReadyToRegister: call state is not idle"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected checkDeregisterTimer()Z
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnEur"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "isReadyToRegister: DelayedDeregisterTimer Running for Telefonica UK SRVCC handover. Skip delete timer if LTE attached"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v3, "isReadyToRegister: DelayedDeregisterTimer Running."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "isReadyToRegister: LTE attached. Delete DelayedDeregisterTimer."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected checkRcsEvent(I)Z
    .locals 5

    .line 718
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 720
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 721
    invoke-static {p1, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 722
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "version"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "RegiGvnEur"

    if-gtz v2, :cond_1

    if-nez p1, :cond_1

    const-string p0, "isReadyToRegister: User don\'t try RCS service yet"

    .line 724
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 728
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v2, "defaultmsgappinuse"

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v2, p0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_2

    const-string p0, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    .line 729
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method protected checkSetupWizard()Z
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 674
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    const-string p0, "RegiGvnEur"

    const-string v0, "SetupWizard is not completed"

    .line 675
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method public determineDeRegistration(II)Z
    .locals 9

    if-nez p1, :cond_2

    .line 1011
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 1012
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1013
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    const-string v8, "Telenor DK delay 5s to deregister"

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    return v2

    .line 1018
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 1019
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isSrvccCase()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1022
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Deregister."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiGvnEur"

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no IMS service for network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1024
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1025
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v2

    .line 1029
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result p0

    return p0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 415
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 416
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 418
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "volte"

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 420
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v2, "mmtel"

    .line 421
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 427
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 428
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyRcsSwitch(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V

    .line 430
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 434
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    const/16 v2, 0xb

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 435
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 436
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 437
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return-object v0

    .line 443
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 444
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 447
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz p1, :cond_6

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 448
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyEntitlementStatus(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 451
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 452
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyPsDataOffExempt(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 455
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const-string v5, "mmtel-video"

    const/16 v6, 0x12

    const-string v7, "RegiGvnEur"

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 456
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v2, :cond_9

    if-eq p2, v6, :cond_9

    .line 457
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result p1

    if-nez p1, :cond_8

    .line 458
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "filterEnabledCoreService: Roaming not support."

    invoke-static {v7, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 459
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 460
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMediaTypeRestrictionPolicy()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Voice_Only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 461
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "Support Voice Only when roaming. just filtering mmtel-video."

    invoke-static {v7, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "voice only when roaming"

    .line 462
    invoke-virtual {p0, v0, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_a

    if-eq p2, v6, :cond_a

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 467
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/PdnController;->isInternationalRoaming(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 468
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "Videocall disabled in international roaming"

    invoke-static {v7, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    invoke-virtual {p0, v0, v5, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 473
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 476
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string p2, "defaultmsgappinuse"

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_c

    goto :goto_1

    :cond_c
    move v4, v3

    :goto_1
    if-nez v4, :cond_d

    .line 477
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 478
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_d

    aget-object v0, p1, v3

    const-string v2, "RCS service off"

    .line 479
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    return-object v1
.end method

.method protected getActualWaitTime()J
    .locals 6

    .line 646
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()J

    move-result-wide v0

    .line 647
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastPcscfIp()Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p0, "RegiGvnEur"

    const-string v0, "getPcscf: empty P-CSCF list."

    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 160
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    .line 166
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 168
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v2, v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public getNumOfEmerPcscfIp()I
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1186
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    return p0
.end method

.method protected getVoiceTechType()I
    .locals 0

    .line 1196
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->forceTurnOnVoLteWhenMenuRemoved()V

    .line 1197
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result p0

    return p0
.end method

.method protected getWaitTime()J
    .locals 6

    .line 633
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 635
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 636
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    :cond_1
    return-wide v0
.end method

.method protected handleForbiddenError(J)V
    .locals 5

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-string v1, "RegiGvnEur"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryCount:I

    const/4 p2, 0x4

    if-ge p1, p2, :cond_0

    add-int/2addr p1, v2

    .line 853
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryCount:I

    .line 854
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    goto :goto_0

    .line 856
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: REGI_RETRY_LIMIT is 4 so ship re-config."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 858
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsRetryAbandon:Z

    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryPcscfPolicyOn403()Ljava/lang/String;

    move-result-object v0

    const-string v3, "next_pcscf"

    .line 863
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    .line 866
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: Being retryAfter header Retry to same PCSCF address in case 403 Forbidden"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 867
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_1

    .line 868
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_3

    .line 869
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 870
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 873
    :cond_3
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "onRegistrationError: Retry to next PCSCF address in case 403 Forbidden"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo p1, "same_pcscf"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 876
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: Retry to same PCSCF address in case 403 Forbidden"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 877
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_2

    .line 878
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    filled-new-array {p2, v0, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_6

    .line 879
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: No need permant fail in emergency registering"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 881
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto :goto_2

    .line 884
    :cond_6
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: Permanently prohibited."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 886
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_7

    .line 887
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 888
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 890
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_8

    .line 891
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected handleRetryTimer(J)V
    .locals 8

    .line 916
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 917
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 924
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_1

    move-wide p1, v2

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getActualWaitTime()J

    move-result-wide p1

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retryAfter set to ActualWaitTime = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; mFailureCounter = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RegiGvnEur"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    if-eqz v0, :cond_5

    .line 938
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 939
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, p1, v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_3

    goto :goto_0

    .line 943
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, p1, v2

    goto :goto_0

    .line 946
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()J

    move-result-wide v2

    goto :goto_0

    :cond_5
    move-wide v2, p1

    .line 950
    :goto_0
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 951
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    return-void
.end method

.method handleServiceUnavailable(J)J
    .locals 5

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_6

    .line 961
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    if-eqz v0, :cond_6

    cmp-long v0, p1, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_6

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 963
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto/16 :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 966
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 968
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 970
    :cond_1
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    goto :goto_0

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_3

    cmp-long v0, p1, v1

    if-eqz v0, :cond_6

    .line 973
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_0

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    cmp-long v0, p1, v1

    if-nez v0, :cond_4

    .line 976
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()J

    move-result-wide p1

    .line 977
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 978
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getLastPcscfIp()Ljava/lang/String;

    move-result-object v2

    .line 979
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 980
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    :cond_6
    :goto_0
    return-wide p1
.end method

.method protected handleTimeoutError(J)V
    .locals 4

    .line 898
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    const-string v1, "RegiGvnEur"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_1

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 901
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto :goto_0

    .line 903
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "onRegistrationError: skip resetPcscfList."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 906
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    .line 909
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "onRegistrationError: Orange requirment,send Try register after timer F next PCSF address"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 910
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    :cond_2
    return-void
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 0

    .line 775
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDelayedDeregisterTimerRunningWithCallStatus()Z

    move-result p0

    return p0
.end method

.method isLastPcscfAddr()Z
    .locals 1

    .line 955
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToRegister(I)Z
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkAvailableRat(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkWFCsettings(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkDeregisterTimer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkDelayedStopPdnEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkRcsEvent(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isThrottled()Z
    .locals 6

    .line 211
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v2
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 1

    .line 1093
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStatus: event="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " error="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RegiGvnEur"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 1095
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    goto :goto_0

    .line 1096
    :cond_0
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 1097
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    .line 1098
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHasPendingReRegistration:Z

    if-eqz p2, :cond_2

    const-string p2, "onCallStatus : call ended, proceeding with pending re-registration task"

    .line 1099
    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasForcedPendingUpdate(Z)V

    .line 1101
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p3, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 1102
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHasPendingReRegistration:Z

    goto :goto_0

    .line 1104
    :cond_1
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, p2, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleAlternativeCallState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 2

    .line 269
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 272
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p2

    .line 273
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 274
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    const-string v0, "RegiGvnEur"

    if-eqz p2, :cond_0

    .line 275
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "onPdnRequestFailed apply in non LTE/NR"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "onPdnRequestFailed ignore in non LTE/NR"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 282
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getMatchedPdnFailReasonFromGlobalSettings(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_3

    const-string p2, ":"

    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :cond_2
    const-wide/16 p1, -0x1

    .line 290
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setRetryTimeOnPdnFail(J)V

    move p1, v0

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 294
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2, v0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    .line 295
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 296
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 297
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 298
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->isEpdgServiceConnected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 301
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->onPermanentPdnFail()V

    .line 304
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_5

    sget-object p2, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_6

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    :cond_6
    return-void

    .line 312
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnFailCounterInNr()V

    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 790
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationDone: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 791
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryCount:I

    .line 792
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsRetryAbandon:Z

    .line 793
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v1, 0x0

    .line 794
    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 795
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 796
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    const-string v0, "Registered"

    .line 797
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->stopTimsTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 3

    .line 113
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p4

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retryAfterMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mCurPcscfIpIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumOfPcscfIp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFailureCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsPermanentStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 p4, 0x0

    .line 116
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 117
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsRetryAbandon:Z

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    move-wide p2, v0

    .line 123
    :cond_0
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 124
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 126
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p4

    if-lez p4, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleTimeOutEmerRegiError()V

    return-void

    .line 131
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result p4

    const/16 v2, 0xb

    if-eqz p4, :cond_2

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleForbiddenError(J)V

    goto :goto_0

    .line 133
    :cond_2
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleTimeoutError(J)V

    goto :goto_0

    .line 135
    :cond_3
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 136
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleServiceUnavailable(J)J

    goto :goto_0

    .line 137
    :cond_4
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_INTERNAL_ERROR:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 138
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p4

    if-ne p4, v2, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result p4

    if-eqz p4, :cond_5

    cmp-long p4, p2, v0

    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p4

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p4, v0, :cond_5

    .line 140
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "onRegistrationError: ORANGE LastPCSF want to stop ims pdn"

    const-string v1, "RegiGvnEur"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p4, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 142
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 146
    :cond_5
    :goto_0
    iget-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez p4, :cond_9

    iget-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsRetryAbandon:Z

    if-eqz p4, :cond_6

    goto :goto_1

    .line 149
    :cond_6
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p4, v0, :cond_8

    :cond_7
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p4

    if-ne p4, v2, :cond_8

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->adjustTmobileErrorTreatment(Lcom/sec/ims/util/SipError;J)V

    .line 152
    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleRetryTimer(J)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 593
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSipError: service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsService(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "403 Forbidden for RCS service"

    invoke-interface {v0, v3, v1, v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    const-string v0, "onSipError() deregister RCS by 403 Forbidden"

    .line 597
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "smsip"

    .line 600
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EDF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    const-string v0, "initial_registration"

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "smsip onSipError() initial registration for Mno.EDF after 504 Server Time-out"

    .line 605
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    :cond_2
    const-string v0, "mmtel"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 611
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 612
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 615
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 616
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 619
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELECOM_ANDORRA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 620
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    :cond_6
    return-object p2
.end method

.method public onSrvccComplete()V
    .locals 4

    .line 1111
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const-string v1, "RegiGvnEur"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1112
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v3, "onSrvccComplete: delayedDeregisterTimer 4 seconds start"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1113
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setDelayedDeregisterTimerRunning(Z)V

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v1, 0xfa0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->MEO_PORTUGAL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_2

    .line 1118
    sget-object v3, Lcom/sec/internal/constants/Mno;->DNA_FINLAND:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    .line 1119
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v3, "onSrvccComplete: delayedDeregisterTimer 1 second start"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1120
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setDelayedDeregisterTimerRunning(Z)V

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v1, 0x3e8

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :cond_1
    return-void

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1127
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    :cond_3
    return-void
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 5

    .line 185
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    :cond_0
    if-nez p1, :cond_3

    .line 187
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    const/16 v0, 0x193

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 188
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "Subscribe Error. Deregister.."

    invoke-interface {p1, v3, v0, v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 192
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 193
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onSubscribeError: state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFailureCounter: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()J

    move-result-wide p1

    .line 201
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_0

    .line 204
    :cond_2
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 2

    .line 386
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    .line 388
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDelayPcscfChangeDuringCall()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    if-nez p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updatePcscfIpList(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    if-nez p1, :cond_2

    .line 396
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithVoPSNeeded()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithRATNeeded()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_2

    .line 398
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "onTelephonyCallStatusChanged: delayedDeregisterTimer 10 seconds start"

    const-string v1, "RegiGvnEur"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 399
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setDelayedDeregisterTimerRunning(Z)V

    .line 400
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v0, 0x2710

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :cond_2
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1035
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 1036
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->releaseThrottle(I)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object p1, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updateGeolocation(Ljava/lang/String;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onVolteSettingChanged()V
    .locals 7

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-string v1, "RegiGvnEur"

    if-eqz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "onVolteSettingChanged: Ignore"

    invoke-static {v1, v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    .line 757
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 758
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVolteSettingChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mDelayedVolteOffFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 763
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p0, v2}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->sendVolteState(IZ)V

    goto :goto_1

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    .line 766
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVolteSettingChanged: Pending sendVolteState in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "msec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mVolteOffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mDelayedVolteOffFuture:Ljava/util/concurrent/ScheduledFuture;

    :goto_1
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 5

    const/4 v0, 0x6

    const-string v1, "RegiGvnEur"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 236
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 237
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 238
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: delete DelayedDeregisterTimer on fligt mode"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setDelayedDeregisterTimerRunning(Z)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v3, "onReceive: FLIGHT_MODE is changed"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "flight mode enabled"

    invoke-interface {v0, v3, v2, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 248
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 249
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 250
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 252
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 253
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 254
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 255
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    goto :goto_1

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    .line 257
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 258
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    .line 259
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    .line 262
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    if-nez v0, :cond_7

    .line 263
    :cond_6
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public resetPcscfList()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    .line 179
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 5

    .line 1063
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    const-string v2, "RegiGvnEur"

    if-eq v0, v1, :cond_0

    const-string p0, "If not IMS PDN, no need to start TimsTimer"

    .line 1064
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1067
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTimsTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") Pdn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1068
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1069
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ImsPdnRequst"

    .line 1071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0x1d4c0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->stopTimsTimer(Ljava/lang/String;)V

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v0

    int-to-long v0, v0

    .line 1080
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    .line 1083
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    const-string v0, "Un-register Intent receiver(s)"

    const-string v1, "RegiGvnEur"

    .line 1167
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1171
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mDailyReRegisterIntentReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1173
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mDailyReRegisterIntentReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "unRegisterIntentReceiver: Receiver not registered!"

    .line 1176
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateEutranValues()V
    .locals 6

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getVoiceTechType()I

    move-result v0

    .line 811
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEutranValues : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnEur"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 812
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    const-string/jumbo v3, "voice_domain_pref_eutran"

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 816
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 819
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNonVoLTESimByPdnFail:Z

    if-eqz v0, :cond_2

    .line 822
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.sec.ims.settings/global"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 826
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    .line 825
    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RegiGvnEur["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getDelayPcscfChangeDuringCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCallStatus:I

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    goto :goto_0

    .line 380
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
