.class public Lcom/sec/internal/ims/core/RegistrationGovernorKor;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorKor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;,
        Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

.field private static final DEFAULT_TIMS_TIMER_MS:J = 0xea60L

.field private static final DNS_RETRY_TIME_MS:J = 0xfa0L

.field private static final IMS_NOT_AVAILABLE_REG_FAIL_RETRY:I = 0x2

.field protected static final INTENT_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field protected static final INTENT_USIMDOWNLOAD_END:Ljava/lang/String; = "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

.field protected static final INTENT_WAP_PUSH_DM_NOTI_RECEIVED:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field private static final MAX_REQUESTPDN_COUNT:I = 0x5

.field private static final OMADM_KT_DEFAULT_PCSCF:Ljava/lang/String; = "volte.imskt.com"

.field private static final OMADM_SKT_DEFAULT_PCSCF:Ljava/lang/String; = "172.28.109.141,fd00:0e15:0501:5::141,172.28.109.73,fd00:e15:301:5::73,211.188.227.140,2001:2d8:e0:227::140"

.field static final REG_RETRY_MAX_TIME_FOR_UNLIMITED_404_MS:J = 0xdbba00L

.field private static final REQUESTPDN_INTERVAL:I = 0x3

.field private static final REQUEST_INTERNETPDN_TIMER_MS:J = 0x7530L


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final allowedPackages:[Ljava/lang/String;

.field private mAllowedNetworkType:J

.field private mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

.field private mConsecutiveForbiddenCounter:I

.field mDmPollingTimer:Landroid/os/Message;

.field mDmUpdatedFlag:Z

.field mDnsQueryCount:I

.field private mHasNetworkFailure:Z

.field protected mHasPendingInitRegistrationByDMConfigChange:Z

.field protected mHasPendingNotifyImsNotAvailable:Z

.field protected mIntentReceiverKor:Landroid/content/BroadcastReceiver;

.field private mIpsecEnabled:Z

.field private mIsAkaChallengeTimeout:Z

.field protected mIsShipBuild:Z

.field private mLocalAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mLteModeOn:Z

.field private mNeedDelayedDeregister:Z

.field protected mPDNdisconnectTimeout:Landroid/os/Message;

.field private mPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRcsPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPdnTimeoutCount:I

.field private mSmsOverIp:Z

.field private mSubId:I

.field protected mVolteServiceStatus:Z


# direct methods
.method public static synthetic $r8$lambda$7KSF9cH6P7d96UODZckhzlsphYA(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->lambda$handleAirplaneModeIntent$1(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IbxXw3qf6bYXa1pPGaJBxew4zS0(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->lambda$isNeedDelayedDeregister$0(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedNetworkType(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkType:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAllowedNetworkType(Lcom/sec/internal/ims/core/RegistrationGovernorKor;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkType:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAirplaneModeIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleAirplaneModeIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBootCompletedIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleBootCompletedIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFlightModeIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleFlightModeIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNewOutgoingCallIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleNewOutgoingCallIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePeriodicPollingTimeoutIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handlePeriodicPollingTimeoutIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUsimDownloadEndIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleUsimDownloadEndIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWapPushDmNotiReceivedIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleWapPushDmNotiReceivedIntent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 1

    .line 162
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 122
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 126
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 127
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 128
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 129
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    const/4 p4, 0x1

    .line 132
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 137
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 138
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 139
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    .line 140
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    .line 141
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    .line 142
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 143
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    .line 145
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    .line 146
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    const-wide/16 p5, -0x1

    .line 147
    iput-wide p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkType:J

    .line 148
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    const-string/jumbo p1, "root"

    const-string p5, "com.android.shell"

    const-string p6, "com.sec.imsservice"

    const-string p7, "com.skt.skaf.OA00199800"

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 156
    filled-new-array {p6, p7, v0, p1, p5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->allowedPackages:[Ljava/lang/String;

    .line 164
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    const-string p3, ">"

    if-eqz p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RegiGvnKor-RCS<"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RegiGvnKor-EMC<"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RegiGvnKor<"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    .line 172
    :goto_0
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 173
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 174
    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    .line 177
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 178
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 179
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    .line 180
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    const-string/jumbo p1, "ro.product_ship"

    const-string p3, "false"

    .line 181
    invoke-static {p1, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    .line 183
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.sec.internal.ims.imsservice.dm_polling_timeout"

    .line 184
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.android.internal.ims.FLIGHT_MODE"

    .line 185
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 186
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    .line 187
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.intent.action.regist_reject"

    .line 188
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.intent.action.LTE_REJECT"

    .line 189
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    .line 190
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.NEW_OUTGOING_CALL"

    .line 191
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.BOOT_COMPLETED"

    .line 192
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p5, "intent added"

    invoke-static {p3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p3, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIntentReceiverKor:Landroid/content/BroadcastReceiver;

    .line 233
    iget-object p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->updateEutranValues()V

    .line 239
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 p3, -0x1

    iget p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p3, p5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    const/4 p3, -0x2

    if-ne p1, p3, :cond_2

    .line 241
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iget p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p4, "Stucked on RCS_DISABLED_BY_NETWORK. Force to DISABLED."

    invoke-virtual {p1, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 244
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p3, "Stucked on RCS_TURNING_OFF. Force to ENABLED."

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p4, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkValidRejectCode(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getActualWaitTime()J
    .locals 6

    .line 732
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getWaitTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private getPcscfFromFile(Lcom/sec/internal/constants/Mno;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/Mno;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v2, "pcscf"

    if-ne p1, v1, :cond_2

    const-string p1, "SKT VoLTE"

    .line 1779
    invoke-static {p1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->readFromJsonFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ","

    if-nez v1, :cond_0

    .line 1781
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPcscfFromFile : SKT ImsAutoUpdate "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto/16 :goto_1

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->readFromJsonFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1785
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1786
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPcscfFromFile : SKT ImsProfileCache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-static {p1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 1789
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPcscfFromFile : SKT fail to read pcscf from file"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "172.28.109.141,fd00:0e15:0501:5::141,172.28.109.73,fd00:e15:301:5::73,211.188.227.140,2001:2d8:e0:227::140"

    .line 1790
    invoke-static {p0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 1794
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_5

    const-string p1, "KT VoLTE"

    .line 1795
    invoke-static {p1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->readFromJsonFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1796
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1797
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfFromFile : KT ImsAutoUpdate "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1800
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->readFromJsonFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1801
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1802
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfFromFile : KT ImsProfileCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1805
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPcscfFromFile : KT fail to read pcscf from file"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "volte.imskt.com"

    .line 1806
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getVolteServiceStatus()Z
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v0

    .line 1458
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolteServiceStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleAirplaneModeIntent(Landroid/content/Intent;)V
    .locals 1

    .line 2062
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda1;-><init>()V

    .line 2064
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 2065
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2066
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 2067
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 2068
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onReceive: AIRPLANE_MODE off. reset ACS Info"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2071
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfPreference()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleBootCompletedIntent()V
    .locals 2

    .line 2136
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: ACTION_BOOT_COMPLETED is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkUnprocessedOmadmConfig()V

    :cond_0
    return-void
.end method

.method private handleFlightModeIntent(Landroid/content/Intent;)V
    .locals 4

    .line 2028
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string/jumbo v0, "powerofftriggered"

    const/4 v1, -0x1

    .line 2033
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2034
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "powerOff :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    .line 2036
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "level"

    .line 2038
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    .line 2039
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/2addr v1, v3

    .line 2041
    div-int/2addr v1, p1

    .line 2043
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-gt v1, p1, :cond_0

    .line 2046
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 2050
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: FLIGHT_MODE is changed - reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2052
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setNeedDelayedDeregister(Z)V

    .line 2053
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregister delay 300 ms for sending BYE"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "flight mode enabled"

    invoke-interface {p1, v1, v0, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 2056
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 2057
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    :cond_1
    return-void
.end method

.method private handleNewOutgoingCallIntent()V
    .locals 2

    .line 2125
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 2126
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 2127
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->hasCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: INTENT_NEW_OUTGOING_CALL is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 2130
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    const/16 v0, 0x25

    .line 2131
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    :cond_1
    return-void
.end method

.method private handlePeriodicPollingTimeoutIntent()V
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: dm polling timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendRequestDmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_0
    return-void
.end method

.method private handleUsimDownloadEndIntent()V
    .locals 3

    .line 2076
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_0
    return-void
.end method

.method private handleWapPushDmNotiReceivedIntent()V
    .locals 2

    .line 2112
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: INTENT_WAP_PUSH_DM_NOTI_RECEIVED is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2115
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 2116
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 2117
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 2118
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    const-string v0, "handleWapPushDmNotiReceivedIntent: reset mIsPermanentStopped"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hasCall()Z
    .locals 4

    .line 2014
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2015
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private isVolteEnabled()Z
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleAirplaneModeIntent$1(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    .line 2064
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isNeedDelayedDeregister$0(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;
    .locals 0

    .line 1819
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->hasIncomingSessionForA2P(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private moveToNextPcscfAndInitialRegister()V
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "moveToNextPcscfAndInitialRegister()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 780
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 783
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "moveToNextPcscfAndInitialRegister: null P-CSCF list!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 786
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    .line 787
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-ltz v4, :cond_2

    if-eqz v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "moveToNextPcscfAndInitialRegister: forceInitialRegi"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 790
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    const-wide/16 v3, 0x0

    .line 791
    iput-wide v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 792
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 794
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v5, "pcscf updated"

    invoke-interface {v1, v3, v2, v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToNextPcscfAndInitialRegister(): nextPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNumOfPcscfIp "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurPcscfIpIdx "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPcscfIpList "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startDmPollingTimer(I)V
    .locals 6

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPollingTimer()V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDmPollingTimer: Timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startDmConfigTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 1
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

    .line 2145
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 2147
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2148
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2149
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_0

    .line 2150
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2151
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DM_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_0

    .line 2152
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2153
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_3G_PREFERRED_MODE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_3
    :goto_0
    const-string p2, "mmtel"

    const-string v0, "isVolteEnabled disabled."

    .line 2155
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public buildReattachNotiOemHookCmd()[B
    .locals 0

    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 1108
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x9t
        0xbt
        0x0t
        0x4t
    .end array-data
.end method

.method public checkAcsPcscfListChange()V
    .locals 5

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1032
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v2, "address"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1036
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkAcsPcscfIpListChange : lboPcscfAddress is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1040
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAcsPcscfIpListChange : previous pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1048
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPcscfList()V

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    .line 1050
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1054
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "checkAcsPcscfIpListChange : pcscf updated"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1058
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkAcsPcscfIpListChange : resetPcscfList"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected checkCallStatus()Z
    .locals 4

    .line 1256
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    .line 1261
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyToRegister : getTelephonyCallStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method checkDMConfigChange(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 7

    if-nez p1, :cond_0

    .line 1833
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkDMConfigChange : dmProfile in null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1837
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1839
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 1840
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1841
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    if-ne v3, v4, :cond_3

    .line 1842
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    if-ne v3, v4, :cond_3

    .line 1843
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    .line 1848
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDMConfigChange : previous pcscf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new pcscf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDMConfigChange : previous IpSecEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", new IpSecEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDMConfigChange : previous SmsOverIp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", new SmsOverIp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1852
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDMConfigChange : previous ServiceStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", new ServiceStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1855
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 1858
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1859
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPcscfList()V

    .line 1860
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 1861
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "checkDMConfigChange : resetPcscfList"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 1864
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 1865
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 1866
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setOldVolteServiceStatus(Z)V

    .line 1868
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    .line 1870
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result p1

    if-nez p1, :cond_5

    .line 1871
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkDMConfigChange : need de-reg and init reg"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 1873
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1874
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v2, v1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1876
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_2

    .line 1878
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkDMConfigChange : de-reg and init reg after call end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    :cond_6
    :goto_2
    return-void
.end method

.method checkOtaStatus()Z
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ril.domesticOtaStart"

    .line 1199
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 1198
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isReadyToRegister : OTA is working, don\'t try register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 10

    .line 821
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 822
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProfileUpdateFromDM: force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pcscf_pref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    const-string/jumbo v3, "ril.simtype"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkProfileUpdateFromDM : KT_unreg SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    .line 836
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v1, v6, v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "18"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkProfileUpdateFromDM : LGT_unreg SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    .line 841
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, v3, v6}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 843
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    .line 844
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    .line 846
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isNeedForcibleSmsOverImsOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 847
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v3, v4, v6}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 848
    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setSupportSmsOverIms(Z)V

    .line 849
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 850
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "checkProfileUpdateFromDM: SmsOverIms is false. set it as true forcibly"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v3

    const-string v6, "checkProfileUpdateFromDM : SmsOverIms is false. set it as true forcibly"

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 854
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz v1, :cond_17

    .line 855
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->hasOmaDmFinished(I)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    if-eqz v1, :cond_5

    goto :goto_2

    .line 939
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 940
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p1, :cond_6

    .line 941
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Roaming, so use PCO"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 943
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 944
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 946
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_8

    .line 948
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "not Roaming"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 952
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "oversea device and KOR SIM, so use PCO"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 955
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 957
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_8

    .line 856
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkProfileUpdateFromDM()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_9

    if-eqz v1, :cond_9

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 861
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 863
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkProfileUpdateFromDM: LGTUnregSIM PCO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_9
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mDmUpdatedFlag true"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 871
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_b

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result p1

    if-nez p1, :cond_b

    .line 872
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 874
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KT 5G] P-CSCF discovery PCO>DM>DEFAULT pcscf: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 877
    :cond_b
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 879
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 880
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 881
    sget-object v3, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 882
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 884
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DM pcscf is valid : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_3

    :cond_e
    move v0, v5

    :goto_3
    if-eqz p1, :cond_f

    .line 889
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    if-eqz v0, :cond_f

    .line 890
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfPort()I

    move-result v0

    const/4 v1, 0x5

    .line 891
    invoke-virtual {v2, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 892
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    if-lez v0, :cond_11

    .line 894
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 895
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DM updated lbo pcscf port found : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 898
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_10

    .line 900
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getPcscfFromFile(Lcom/sec/internal/constants/Mno;)Ljava/util/List;

    move-result-object p1

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DM pcscf is empty. [KT 5G] P-CSCF discovery PCO>DM>DEFAULT pcscfList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 903
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DM pcscf is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 906
    :goto_4
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 910
    :cond_11
    :goto_5
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 911
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SMS over IMS is enabled by OMADM"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object p1

    .line 913
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 914
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    .line 916
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string/jumbo v7, "smsip"

    if-eqz v6, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 917
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v3, v4

    goto :goto_7

    :cond_14
    move v3, v5

    :goto_7
    if-nez v3, :cond_12

    .line 923
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    goto :goto_6

    .line 929
    :cond_15
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result p1

    if-lez p1, :cond_16

    .line 930
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DmPollingPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startDmPollingTimer(I)V

    .line 934
    :cond_16
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkDMConfigChange(Lcom/sec/ims/settings/ImsProfile;)V

    .line 936
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 937
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    :cond_17
    :goto_8
    return-void
.end method

.method protected checkRcsEvent(I)Z
    .locals 6

    .line 1222
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1227
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1229
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "version"

    .line 1230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1229
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    if-nez p1, :cond_1

    .line 1232
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1236
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v2, "defaultmsgappinuse"

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1237
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1240
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1243
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v4, "msisdn_from_pau"

    const-string v5, ""

    invoke-static {p1, v3, v4, v2, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1245
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isReadyToRegister: MSISDN is null, try to RCS ACS after registered VoLTE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "PENDING RCS"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x100a3000

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    :cond_3
    return v0
.end method

.method protected checkRegiStatus()Z
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1211
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    return v2

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1214
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isReadyToRegister: mPDNdisconnectTimeout is not null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method checkUnprocessedOmadmConfig()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkUnprocessedOmadmConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendCheckUnprocessedOmadmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V
    .locals 6

    .line 1649
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v0

    .line 1650
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result v1

    .line 1651
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result v2

    .line 1653
    sget-object v3, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_0
    move v0, v4

    goto :goto_1

    .line 1658
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    if-ne p1, v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v4

    .line 1665
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVoLTEStatusChanged : needReregi = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVolteOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 1668
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    if-ne p1, v0, :cond_3

    .line 1669
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1670
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1671
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVoLTEStatusChanged : abnormal case need de-reg and init reg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v4, v4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1674
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    return-void

    .line 1677
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVoLTEStatusChanged: force update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    if-ne p1, v1, :cond_4

    const-wide/16 v1, 0x96

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 0

    .line 2235
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->clear()V

    .line 2236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->unRegisterIntentReceiver()V

    .line 2237
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->unregisterAllowedNetworkTypesListener()V

    return-void
.end method

.method deregisterIfConnecting(I)V
    .locals 4

    .line 2191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 2192
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v0, :cond_0

    .line 2194
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 2195
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 2196
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 2197
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deregisterIfConnecting : stopPdnConnectivity"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2199
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2200
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean p1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 2201
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const-string/jumbo v3, "user triggered"

    invoke-interface {v2, v0, v1, p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 2202
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deregisterIfConnecting : deregister"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 6
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

    .line 1122
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1126
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1127
    new-instance v1, Ljava/util/HashSet;

    if-eqz p1, :cond_1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1129
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_8

    .line 1130
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    .line 1131
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v3, :cond_3

    .line 1132
    iget v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v3, v4, :cond_4

    .line 1134
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "filterService: NW is not LTE/NR or VoPS is not supported in roaming"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1136
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1139
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveSubInfoCount()I

    move-result v3

    if-le v3, v2, :cond_4

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-eq v3, v4, :cond_4

    const-string/jumbo v3, "ro.boot.hardware"

    const-string v4, ""

    .line 1140
    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qcom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-nez v3, :cond_4

    iget v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1142
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "filterService: QC non DDS is CS only in 3G"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NON_DDS_CS_ONLY_IN_3G:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1144
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1148
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volte"

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-eqz v3, :cond_6

    .line 1150
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v3, "mmtel"

    .line 1151
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1152
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1155
    :cond_6
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 1157
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2, v3, v5}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    .line 1158
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v3, :cond_7

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p1

    if-eqz p1, :cond_7

    move v4, v2

    .line 1159
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterService: isKTInRoaming: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v4, :cond_8

    const-string/jumbo p1, "smsip"

    const-string p2, "isSupportSmsOverIms disabled"

    .line 1161
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1166
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1167
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1170
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportRcsAcrossSalesCode()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveSubInfoCount()I

    move-result p1

    if-le p1, v2, :cond_a

    .line 1171
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1172
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "filterService: RCS is not supported for non DDS"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_NOT_DDS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1174
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1178
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_b

    .line 1179
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1180
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p2

    const-string v2, "no_sms"

    .line 1181
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1182
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterService: RCS is not supported for MUM with DISALLOW_SMS ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_MUM_DISALLOW_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1184
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1188
    :cond_b
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1189
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1192
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterService : filteredServices = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method getActualWaitTimeForUnlimited404()J
    .locals 6

    .line 736
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    int-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-wide/32 v2, 0xdbba00

    if-gez p0, :cond_0

    return-wide v2

    .line 741
    :cond_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getVoiceTechType()I
    .locals 5

    .line 1398
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1402
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    if-eqz v0, :cond_2

    .line 1404
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 1405
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->allowedPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1406
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceTechType : modifier pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->forceTurnOnVoLte()V

    return v2

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v3, -0x1

    invoke-static {v0, v3, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1413
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVoiceTechType : voicecall_type is corrupted. recover it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 1417
    :cond_3
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result p0

    return p0

    .line 1399
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVoiceTechType : LGU device or KT ship device have to enable VOLTE always, regardless of DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->forceTurnOnVoLte()V

    return v2
.end method

.method protected getWaitTime()J
    .locals 6

    .line 755
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

    if-gez v2, :cond_0

    .line 758
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    return-wide v0

    .line 760
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleAllowedNetworkTypeChanged()V
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeInternal()Z

    move-result v0

    .line 1607
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    if-eq v1, v0, :cond_1

    .line 1608
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    .line 1609
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->onPreferredNetworkModeChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleForbiddenError(J)V
    .locals 2

    .line 304
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string v0, "onRegistrationError: Two consecutive 403 errors"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v0, 0x0

    .line 308
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 309
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 310
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 311
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 312
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 313
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 314
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 315
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 316
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->makeRegistrationFailedToast()V

    goto :goto_1

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: 403 error. Need OmaDM trial only for KOR device in domestic"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 320
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendRequestDmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 326
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p1

    if-nez p1, :cond_4

    .line 330
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method handleNwRejectIntent(Landroid/content/Intent;)V
    .locals 5

    .line 2082
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CAUSE"

    .line 2084
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2085
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 2089
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2091
    :catch_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid CAUSE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2093
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", CAUSE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkValidRejectCode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2095
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string v0, "com.samsung.intent.action.regist_reject"

    .line 2097
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "nw_regist_reject"

    goto :goto_1

    :cond_1
    const-string v0, "com.samsung.intent.action.LTE_REJECT"

    .line 2099
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "nw_lte_reject"

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 2103
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 2104
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 2105
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    goto :goto_3

    .line 2086
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "empty CAUSE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public hasNetworkFailure()Z
    .locals 0

    .line 1476
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    return p0
.end method

.method public isIPSecAllow()Z
    .locals 3

    .line 1423
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 1424
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isIPSecAllow : oversea device and SKT sim. do not use IPSec"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_3

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1431
    :cond_1
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    return p0

    :cond_2
    :goto_0
    return v1

    .line 1434
    :cond_3
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    return p0
.end method

.method protected isLTEDataModeEnabled()Z
    .locals 8

    .line 1622
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 1628
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 1629
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPreferredNetworkType(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/16 v4, 0xe

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    .line 1632
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLTEDataModeEnabled : netType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subid = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    if-ne v4, v1, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eq v0, v2, :cond_6

    .line 1635
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTEDataModeEnabled : not match! mLteModeOn = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isLTEDataMode ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1639
    :catch_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isLTEDataModeEnabled : getPreferredNetworkType fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLTEDataModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    return p0

    :cond_7
    :goto_5
    return v1
.end method

.method protected isLTEDataModeInternal()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1582
    :try_start_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 1583
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1584
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isLTEDataModeInternal : TelephonyManager null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1589
    :cond_0
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v4

    .line 1590
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v6

    and-long/2addr v4, v6

    const/4 v6, 0x2

    .line 1591
    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v7

    and-long/2addr v4, v7

    const/4 v7, 0x3

    .line 1592
    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v7

    and-long v3, v4, v7

    long-to-int v3, v3

    .line 1593
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_2

    const/16 v4, 0xe

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v0

    .line 1596
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLTEDataModeInternal : netType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subid = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v4, v1

    .line 1598
    :catch_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isLTEDataModeInternal : getAllowedNetworkTypesForReason fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTEDataModeInternal : prev= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " new="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v1, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public isMobilePreferredForRcs()Z
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1483
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedDelayedDeregister()Z
    .locals 3

    .line 1815
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedDelayedDeregister :  mNeedDelayedDeregister = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    if-nez v0, :cond_1

    .line 1818
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 1819
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method isNeedForcibleSmsOverImsOn()Z
    .locals 9

    .line 1992
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1993
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteEnabled()Z

    move-result v0

    .line 1994
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v3, ""

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string/jumbo v5, "sms_over_ip_network_indication"

    invoke-static {v1, v5, v3, v4}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1995
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedForcibleSmsOverImsOn: isVolteEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSMSIP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 1997
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 1998
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v4

    .line 1999
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedForcibleSmsOverImsOn: isDataRoaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isEpsOnlyReg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    .line 2003
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_0
    move v2, v5

    .line 2009
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedForcibleSmsOverImsOn: isNeedSmsOverImsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isOmadmConfigAvailable()Z
    .locals 5

    .line 1689
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v3, ""

    const-string/jumbo v4, "ril.simtype"

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v2, v4, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isOmadmConfigAvailable : KT_unreg SIM. do not trigger DM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v2, v4, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1701
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isOmadmConfigAvailable : LGT_unreg SIM. do not trigger DM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1706
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1707
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isOmadmConfigAvailable : oversea device and KOR sim. do not trigger DM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1712
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.ims.dm"

    .line 1713
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 1715
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isOmadmConfigAvailable : DM Package not found"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isReadyToRegister(I)Z
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkOtaStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkRcsEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkCallStatus()Z

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

.method public isThrottled()Z
    .locals 0

    .line 815
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->isThrottled()Z

    move-result p0

    return p0
.end method

.method public isThrottledforImsNotAvailable()Z
    .locals 0

    .line 1684
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    return p0
.end method

.method protected isVolteSettingEnabled()Z
    .locals 0

    .line 1499
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVoiceTechType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method makeRegistrationFailedToast()V
    .locals 4

    .line 1980
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1981
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1982
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1983
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1984
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    goto :goto_0

    .line 1985
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1986
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "1544-0010"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f070030

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected moveToNextPcscfIp()Ljava/lang/String;
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToNextPcscfIp: mCurPcscfIpIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPcscfIpList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 809
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 804
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "moveToNextPcscfIp: empty P-CSCF list."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public needImsNotAvailable()Z
    .locals 7

    .line 1464
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1465
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSupportImsNotAvailable()Z

    move-result v1

    .line 1466
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1467
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLGUInVoLTERoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isImsNotAvailableSupported : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVoLTEOnly : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method needToHandleUnlimited404()Z
    .locals 1

    .line 2219
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyReattachToRil()V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyReattachToRil"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->buildReattachNotiOemHookCmd()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->sendRawRequestToTelephony(Landroid/content/Context;[B)V

    return-void
.end method

.method public onAdsChanged(I)V
    .locals 4

    .line 709
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onAdsChanged(I)V

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdsChanged: ActiveDataPhoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 715
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    .line 717
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 718
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eq p1, v1, :cond_2

    const-string/jumbo p1, "ro.boot.hardware"

    const-string v1, ""

    .line 719
    invoke-static {p1, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "qcom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-nez p1, :cond_2

    iget p1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 721
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 722
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "onAdsChanged: VoLTE disabled(qcom non DDS is cs only in 3G)"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 724
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;J)V

    .line 727
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStatus: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 665
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    return-void
.end method

.method public onLteDataNetworkModeSettingChanged(Z)V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLteDataNetworkModeSettingChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1506
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveSubInfoCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string/jumbo p1, "ro.boot.hardware"

    const-string v0, ""

    .line 1507
    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "qcom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1508
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1509
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "onLteDataNetworkModeSettingChanged: VoLTE disabled(qcom non DDS is cs only in 3G)"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1510
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1511
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1514
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V

    return-void
.end method

.method public onPdnConnected()V
    .locals 3

    .line 2162
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2164
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onPdnConnected: LinkProperties are not exist! return.."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2167
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 2168
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspended()V

    .line 2169
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspendedBySnapshot()V

    .line 2171
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2172
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 2174
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2175
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPdnConnected: local IP is changed. dm&initial regi. are needed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 2177
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 2182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 2183
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfPreference()V

    .line 2184
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    const/4 v0, 0x5

    .line 2185
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->releaseThrottle(I)V

    :cond_2
    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 1

    .line 1295
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 1298
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isMatchedPdnFailReason(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1299
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": Release throttle."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 1300
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->releaseThrottle(I)V

    const/4 p1, 0x0

    .line 1301
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsReadyToGetReattach:Z

    :cond_0
    return-void
.end method

.method public onPreferredNetworkModeChanged()V
    .locals 3

    .line 1518
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferredNetworkModeChanged mLteModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLteModeOn:Z

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyLteDataNetworkModeSettingChanged(ZI)V

    return-void
.end method

.method onRegErrorforImsNotAvailable(Lcom/sec/ims/util/SipError;J)V
    .locals 6

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegErrorforImsNotAvailable:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v0

    .line 536
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 537
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 540
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getCallStatus()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 541
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 542
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 543
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 544
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 545
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 546
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 547
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onRegErrorforImsNotAvailable(Postpone notifyImsNotAvailable during call)"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->INTERVAL_TOO_BRIEF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 554
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 555
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 556
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 557
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 558
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 559
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 560
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    const-string p1, "onRegErrorforImsNotAvailable(423)"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 565
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_3

    .line 566
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRegErrorforImsNotAvailable: 406 error. Ipsec not allow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    .line 568
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    cmp-long p1, p2, v4

    if-lez p1, :cond_2

    .line 570
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :goto_0
    return-void

    .line 577
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegErrorforImsNotAvailable: ETC error"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 580
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    :cond_4
    const/4 p1, 0x2

    if-nez v0, :cond_5

    .line 582
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt v1, p1, :cond_5

    .line 583
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 587
    :cond_5
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    if-ne v1, p1, :cond_6

    move p1, v2

    goto :goto_1

    :cond_6
    move p1, v3

    :goto_1
    if-eqz p1, :cond_7

    .line 592
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 593
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 594
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 595
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 596
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 597
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string p2, "onRegErrorforImsNotAvailable(ETC)"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v0, :cond_9

    cmp-long p1, p2, v4

    if-lez p1, :cond_8

    .line 601
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_2

    .line 603
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 605
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegErrorforImsNotAvailable: ETC error. Initial Reg retry"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    cmp-long p1, p2, v4

    if-nez p1, :cond_a

    const-wide/16 p2, 0x3e8

    .line 610
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 611
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRegErrorforImsNotAvailable: ETC error. Refresh Reg retry with same Call-ID"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr p2, v4

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V

    .line 615
    :goto_3
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 616
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 617
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistrationDone: clear mConsecutiveForbiddenCounter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 623
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 624
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 625
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 626
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    const-wide/16 v1, 0x0

    .line 627
    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 628
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 629
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 630
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    const-string v0, "Registered"

    .line 631
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 7

    .line 337
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

    const-string v2, " mTask.mIsRefreshReg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 339
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 344
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result p4

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    :cond_1
    const-string v2, "RegistrationError"

    .line 351
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsTimer(Ljava/lang/String;)V

    .line 353
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorKor;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 354
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_3

    .line 355
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070003

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: Permanently prohibited."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 359
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 360
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 361
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 362
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 363
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 364
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 365
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 366
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 p2, 0x47

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 367
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string p2, "onRegistrationError: Aka challenge timeout"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 368
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 369
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPcscfList()V

    .line 370
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string p3, "Aka challenge timeout"

    invoke-interface {p1, p2, v3, v3, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 372
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->onRegErrorforImsNotAvailable(Lcom/sec/ims/util/SipError;J)V

    return-void

    .line 382
    :cond_5
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 383
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v3

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-ne p1, p4, :cond_7

    .line 385
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_6

    .line 386
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_6

    .line 389
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 392
    :goto_0
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 393
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 394
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 395
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 396
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 397
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 398
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: 305 error. do initial regi. at the 1st P-CSCF after disconnecting/connecting IMS PDN"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move-wide p2, v5

    goto :goto_1

    .line 400
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfAndInitialRegister()V

    .line 401
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p4, "onRegistrationError: 305 error. do initial regi. at the next P-CSCF"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v4, :cond_8

    .line 405
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    :cond_8
    return-void

    .line 409
    :cond_9
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 410
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleForbiddenError(J)V

    return-void

    .line 413
    :cond_a
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 414
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p4, "onRegistrationError: 406 error. Ipsec not allow"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    cmp-long p1, p2, v0

    if-lez p1, :cond_b

    .line 418
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_2

    .line 420
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :goto_2
    return-void

    .line 424
    :cond_c
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    cmp-long v2, p2, v0

    if-gtz v2, :cond_10

    if-nez p4, :cond_10

    .line 425
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: 503 error with no retry-after. do initial regi."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v3

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-ne p1, p2, :cond_e

    .line 428
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_d

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_d

    .line 431
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    goto :goto_3

    :cond_d
    move v3, v4

    .line 435
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 436
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 437
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 438
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 439
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 440
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 442
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: 503 error with no retry-after. do initial regi. at the 1st P-CSCF after disconnecting/connecting IMS PDN"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_4

    .line 445
    :cond_e
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfAndInitialRegister()V

    .line 446
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: 503 error with no retry-after. do initial regi. at the next P-CSCF"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez v4, :cond_f

    .line 449
    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    :cond_f
    return-void

    .line 455
    :cond_10
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: etc mIsRefreshReg"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_14

    .line 457
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p4, :cond_11

    .line 459
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_11

    .line 462
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->notifyReattachToRil()V

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p4

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_5

    :cond_11
    move v3, v4

    .line 466
    :goto_5
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 467
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 468
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 469
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 470
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    cmp-long p1, p2, v0

    if-lez p1, :cond_12

    if-nez v3, :cond_13

    .line 474
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_6

    .line 477
    :cond_12
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_13
    :goto_6
    return-void

    .line 481
    :cond_14
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p4, v3

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 482
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v2, 0x2

    if-lt p4, v2, :cond_15

    .line 483
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 486
    :cond_15
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needToHandleUnlimited404()Z

    move-result p4

    if-eqz p4, :cond_16

    .line 487
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getActualWaitTimeForUnlimited404()J

    move-result-wide p2

    .line 488
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "it would be infinite 404 response. "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 490
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    if-ne p1, p4, :cond_1a

    .line 491
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_9

    .line 495
    :cond_16
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne p4, v2, :cond_1a

    .line 496
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 497
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p4, v3

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    cmp-long p4, p2, v0

    if-lez p4, :cond_17

    .line 499
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onRegistrationError: retryAfter from SIP header"

    invoke-static {p4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 501
    :cond_17
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getActualWaitTime()J

    move-result-wide p2

    .line 503
    :goto_7
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 504
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p4, :cond_19

    .line 505
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_18

    .line 508
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    goto :goto_8

    .line 511
    :cond_18
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    :cond_19
    move v3, v4

    .line 515
    :goto_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: retry at the 1st P-CSCF in "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds."

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1a
    :goto_9
    move v3, v4

    :goto_a
    cmp-long p1, p2, v0

    if-lez p1, :cond_1b

    if-nez v3, :cond_1c

    .line 520
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_b

    .line 523
    :cond_1b
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 525
    :cond_1c
    :goto_b
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 526
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 527
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void
.end method

.method public onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result p4

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result p4

    if-eqz p4, :cond_1

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    :cond_0
    const-string p2, "RegistrationError"

    .line 266
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsTimer(Ljava/lang/String;)V

    .line 268
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_PROBATION:Lcom/sec/ims/util/SipError;

    .line 269
    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 275
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 276
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 277
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 278
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 279
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 280
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    const-wide/16 p1, 0x3e8

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    .line 283
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void

    .line 286
    :cond_3
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 287
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 288
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 289
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 290
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 291
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 292
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 293
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 294
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 295
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string p2, "onRegistrationError: Notify terminated rejected."

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 297
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    :cond_4
    return-void

    .line 270
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onRegistrationError: Notify terminated expired."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 670
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 674
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 675
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onSipError: 709 error. Initial Reg at the next P-CSCF"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    goto/16 :goto_0

    .line 678
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2b

    if-eqz v0, :cond_2

    const-string/jumbo v0, "smsip"

    .line 679
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    return-object p2

    .line 682
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 683
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "403 Forbidden"

    invoke-interface {p1, p0, v1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 686
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v3, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mmtel"

    .line 687
    invoke-virtual {v0, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mmtel-video"

    invoke-virtual {v0, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 688
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSipError: 406 error. Ipsec not allow"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 689
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    .line 690
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 p1, 0xd

    .line 691
    invoke-virtual {v0, p1}, Lcom/sec/ims/settings/ImsProfile;->getDeregTimeout(I)I

    move-result p1

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try regsiter after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    .line 695
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 696
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v0, "user triggered"

    invoke-interface {p1, p0, v1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_5
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "initial_registration"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 698
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 699
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Initial Registration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_6
    :goto_0
    return-object p2

    .line 701
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 638
    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x1f8

    const-string v1, "Subscribe 504 with init-regi"

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onSubscribeError: SUBSCRIBE 504 with init regi."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 642
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "SUBSCRIBE 504 with init regi."

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 644
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v0, 0x0

    .line 645
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 646
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 647
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 648
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 649
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 650
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    :cond_0
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 3

    .line 1893
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setCallStatus(I)V

    .line 1894
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTelephonyCallStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1895
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1894
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTelephonyCallStatusChanged(I)V

    .line 1899
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1900
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getCallStatus()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 1901
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1902
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onTelephonyCallStatusChanged : do pending de-reg and init reg"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 1904
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1905
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v1, v0, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1906
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    return-void

    .line 1909
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    if-eqz p1, :cond_2

    .line 1910
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    const-string v2, "onTelephonyCallStatusChanged : send pending notifyImsNotAvailable"

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1911
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 1912
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1913
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    return-void

    .line 1918
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    if-le p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getCallStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1919
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1920
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onTelephonyCallStatusChanged : tryregister during cs call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_3
    return-void
.end method

.method public onTimsTimerExpired()V
    .locals 7

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimsTimerExpired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1368
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1369
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    .line 1371
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1374
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    const/16 v2, 0xd

    const-string v3, "TimsExpired"

    if-nez v1, :cond_3

    .line 1375
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTimsTimerExpired. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v5, ""

    goto :goto_0

    .line 1376
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",Count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 1378
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTimsTimerExpired()V

    goto :goto_1

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    :goto_1
    return-void

    .line 1386
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTimsTimerExpired for RCS. "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Count is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1390
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 1391
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    :cond_4
    return-void
.end method

.method public onVolteSettingChanged()V
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVolteSettingChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V

    :cond_0
    return-void
.end method

.method public registerAllowedNetworkTypesListener()V
    .locals 4

    .line 1523
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSubId:I

    .line 1524
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->unregisterAllowedNetworkTypesListener()V

    .line 1526
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1528
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1529
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerAllowedNetworkTypesListener : not ValidSubscriptionId"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1532
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSubId:I

    .line 1533
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1535
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerAllowedNetworkTypesListener : TelephonyManager null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1538
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    if-nez v1, :cond_3

    .line 1539
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAllowedNetworkTypesListener : AllowedNetworkTypesListener null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    .line 1543
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1545
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkType:J

    .line 1546
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAllowedNetworkTypesListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 2

    .line 1274
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_4

    .line 1284
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 1285
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1277
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 1278
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottledforImsNotAvailable:Z

    .line 1279
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 1280
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 1288
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez v0, :cond_5

    .line 1289
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseThrottle: case by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected removeCurrentPcscfAndInitialRegister(Z)V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeCurrentPcscfAndInitialRegister()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 768
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;Z)V

    .line 772
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCurrentPcscfAndInitialRegister(): nextPcscfIp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNumOfPcscfIp "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurPcscfIpIdx "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPcscfIpList "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetAllRetryFlow()V
    .locals 1

    const/4 v0, 0x0

    .line 1962
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 1963
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 1964
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 1965
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 1966
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    return-void
.end method

.method public resetIPSecAllow()V
    .locals 1

    const/4 v0, 0x1

    .line 1927
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    return-void
.end method

.method public resetPcscfPreference()V
    .locals 3

    .line 1932
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1933
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1934
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    goto :goto_0

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1939
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetPcscfPreference : getPcscfPreference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public resetPdnFailureInfo()V
    .locals 3

    .line 2208
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPdnFailureInfo()V

    .line 2209
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2210
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 2211
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    if-nez v1, :cond_0

    .line 2212
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetPdnFailureInfo: rcs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    :cond_0
    return-void
.end method

.method public retryDNSQuery()V
    .locals 8

    .line 1724
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryDNSQuery : getPcscfPreference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") mDnsQueryCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") mDmUpdatedFlag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x5

    const-string/jumbo v3, "retryDNSQuery : use DEFAULT pcscf: "

    const/4 v4, 0x0

    if-ne v0, v1, :cond_5

    .line 1726
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    const-wide/16 v5, 0xfa0

    const/4 v7, 0x1

    if-ge v1, v7, :cond_3

    .line 1727
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    if-nez v0, :cond_2

    .line 1728
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1729
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkProfileUpdateFromDM(Z)V

    goto :goto_0

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v0

    .line 1733
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getPcscfFromFile(Lcom/sec/internal/constants/Mno;)Ljava/util/List;

    move-result-object v0

    .line 1735
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1736
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1738
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1739
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryDNSQuery : use OMADM pcscf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1743
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_1

    :cond_3
    if-ne v1, v7, :cond_4

    .line 1750
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getPcscfFromFile(Lcom/sec/internal/constants/Mno;)Ljava/util/List;

    move-result-object v0

    .line 1751
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1752
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1760
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    goto :goto_2

    .line 1756
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1757
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    return-void

    .line 1761
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    if-nez v0, :cond_6

    .line 1764
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1765
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getPcscfFromFile(Lcom/sec/internal/constants/Mno;)Ljava/util/List;

    move-result-object v0

    .line 1766
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1767
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    .line 1768
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1770
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    :cond_6
    :goto_2
    return-void
.end method

.method public setNeedDelayedDeregister(Z)V
    .locals 3

    .line 1824
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedDelayedDeregister :  val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    return-void
.end method

.method setOldVolteServiceStatus(Z)V
    .locals 3

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOldVolteServiceStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    return-void
.end method

.method protected startPDNdisconnectTimer(J)V
    .locals 3

    .line 1944
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 1946
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPDNdisconnectTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startDisconnectPdnTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 8

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimsTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1308
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1309
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x5

    const-wide/32 v2, 0x2bf20

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 1314
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    goto :goto_0

    .line 1320
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    if-ge v0, v1, :cond_3

    add-int/2addr v0, v4

    .line 1321
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 1328
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 1331
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    .line 1332
    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    .line 1333
    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 1334
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1335
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_5

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1337
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0x7530

    .line 1339
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    return-void

    .line 1343
    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    if-ge v0, v1, :cond_6

    add-int/2addr v0, v4

    .line 1344
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 1345
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected stopPDNdisconnectTimer()V
    .locals 2

    .line 1951
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPDNdisconnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1956
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    return-void
.end method

.method stopPollingTimer()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPollingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1081
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 5

    .line 1353
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTimsTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1354
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1355
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1360
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationGovernorKor [mRegBaseTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDmUpdatedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConsecutiveForbiddenCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingInitRegistrationByDMConfigChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAkaChallengeTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingNotifyImsNotAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pcscf_pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1443
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unRegisterIntentReceiver()V
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Un-register Intent receiver(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIntentReceiverKor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1975
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unRegisterIntentReceiver: Receiver not registered!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method unregisterAllowedNetworkTypesListener()V
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    if-nez v0, :cond_0

    return-void

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSubId:I

    .line 1553
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1555
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregisterAllowedNetworkTypesListener : TelephonyManager null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    .line 1559
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mAllowedNetworkTypesListener:Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;

    return-void
.end method

.method updateEutranValues()V
    .locals 5

    .line 2223
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2227
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 2228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "voice_domain_pref_eutran"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2229
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.ims.settings/global"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2230
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

    .line 2229
    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 966
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 970
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 971
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 973
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePcscfIpList: null LinkProperties"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return-void

    .line 979
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 980
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v2

    .line 986
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasGlobalIPv6Address()Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv6DefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    .line 987
    :goto_2
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getIpVer()I

    move-result v7

    .line 989
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 990
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePcscfIpList: value ipv4 addr above ipv6 addr for RCS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v5

    goto :goto_3

    :cond_6
    move v4, v6

    .line 994
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePcscfIpList: localIpType="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", profileIpType="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    if-eq v7, v5, :cond_b

    if-eq v7, v6, :cond_a

    const/4 v1, 0x3

    if-eq v7, v1, :cond_8

    goto :goto_5

    :cond_8
    if-ne v4, v5, :cond_9

    .line 1009
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1010
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1013
    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1014
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1003
    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1004
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 998
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 999
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1021
    :cond_d
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePcscfIpList tmpPcscfIpList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-super {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;)V

    return-void
.end method
