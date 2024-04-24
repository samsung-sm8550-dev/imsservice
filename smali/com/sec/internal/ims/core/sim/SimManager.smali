.class public Lcom/sec/internal/ims/core/sim/SimManager;
.super Landroid/os/Handler;
.source "SimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;,
        Lcom/sec/internal/ims/core/sim/SimManager$AuthRequest;
    }
.end annotation


# static fields
.field protected static final EVENT_ADS_CHANGED:I = 0x6

.field protected static final EVENT_IMSSWITCH_UPDATED:I = 0x7

.field protected static final EVENT_LOAD_MNOMAP:I = 0x8

.field protected static final EVENT_SIM_REFRESH:I = 0x3

.field protected static final EVENT_SIM_STATE_CHANGED:I = 0x1

.field protected static final EVENT_SOFTPHONE_AUTH_FAILED:I = 0x5

.field protected static final EVENT_UICC_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SimManager"

.field private static final SMF_MNONAME_PROP:Ljava/lang/String; = "sys.smf.mnoname"

.field protected static final SOFTPHONE_OPERATOR_CODE:Ljava/lang/String; = "310999"

.field static final URI_UPDATE_GLOBAL:Landroid/net/Uri;

.field static final URI_UPDATE_MNO:Landroid/net/Uri;

.field private static final sInteractAcrossUsersFullPermission:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"


# instance fields
.field OMCNW_CODE:Ljava/lang/String;

.field OMC_CODE:Ljava/lang/String;

.field final mAkaEventReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDevMno:Lcom/sec/internal/constants/Mno;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field final mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHighestPriorityEhplmn:Ljava/lang/String;

.field protected mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mImsi:Ljava/lang/String;

.field mImsiFromImpi:Ljava/lang/String;

.field mIsCrashSimEvent:Z

.field private mIsGtsAppInstalled:Z

.field mIsGuestMode:Z

.field private mIsOutBoundSIM:Z

.field private mIsRefresh:Z

.field protected mIsimLoaded:Z

.field mLabSimCard:Z

.field private mLastImsi:Ljava/lang/String;

.field mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

.field mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

.field mNetMno:Lcom/sec/internal/constants/Mno;

.field mOperatorFromImpi:Ljava/lang/String;

.field mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

.field mSimIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimMnoName:Ljava/lang/String;

.field protected final mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimSlot:I

.field mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field protected mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

.field mSubscriptionId:I

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method public static synthetic $r8$lambda$ZDuD_KUf88accvguY7VePUIrKg8(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 112
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/global"

    .line 113
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V
    .locals 3

    .line 238
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 90
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 91
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 120
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    .line 121
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 122
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 126
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 127
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 129
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    .line 131
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 132
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 133
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 134
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 135
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 137
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 138
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 139
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 140
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 141
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 143
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    .line 147
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v1, 0x12c

    const-string v2, "SimManager"

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 241
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 242
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 243
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 245
    new-instance p2, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-direct {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 247
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "subId: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", info: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p4, :cond_0

    .line 249
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 250
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    :cond_0
    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo p3, "unknown"

    .line 254
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 256
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 257
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 260
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 261
    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 262
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMC_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mDevMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMCNW_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mNetMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 266
    new-instance p2, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;

    invoke-direct {p2, p0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 267
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private isValidAkaResponse(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "2wQAAAAAAAA="

    .line 727
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x10000021

    if-eqz v0, :cond_0

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed to challenge"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 730
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 731
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", empty response"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public static isValidImpu(Ljava/lang/String;)Z
    .locals 2

    .line 705
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid impu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private notifySimRefresh()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifySimRemoved()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method checkOutBoundSIM()Z
    .locals 3

    .line 525
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz v0, :cond_0

    .line 526
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, SIM not ready"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->includedSimByTSS(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 531
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1684
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1685
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deregisterForSimReady(Landroid/os/Handler;)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRemoved(Landroid/os/Handler;)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public dump()V
    .locals 5

    .line 1917
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1918
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1919
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1920
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStatePrev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1921
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1922
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsimLoaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1923
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsOutBound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_0

    .line 1925
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimDataAdaptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1927
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_2

    .line 1928
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1929
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impi: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1930
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1931
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homedomainName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1932
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impuFromSim[]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1934
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1935
    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1934
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1937
    :cond_2
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1941
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->dump()V

    return-void
.end method

.method public getDerivedImpi()Ljava/lang/String;
    .locals 5

    .line 1750
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpi:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1752
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1754
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1759
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1761
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isValidSimOperator(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1762
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: operator is invalid"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    const/4 v2, 0x3

    .line 1767
    invoke-virtual {v3, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1768
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1770
    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    .line 1771
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%s@lte-lguplus.co.kr"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1772
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1773
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%s@ims.taiwanmobile.com"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1775
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1755
    :cond_4
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0
.end method

.method public getDerivedImpu()Ljava/lang/String;
    .locals 5

    .line 1784
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpu:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1785
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1786
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1788
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1793
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    .line 1799
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    .line 1800
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v0, "sip:%s@ims.taiwanmobile.com"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1802
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aget v2, p0, v2

    .line 1803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    .line 1802
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1789
    :cond_3
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpu: IMSI is not found."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public getDerivedImpuFromMsisdn()Ljava/lang/String;
    .locals 5

    .line 1715
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpuFromMsisdn:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1716
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1718
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 1720
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1721
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpuFromMsisdn: msisdn is not found"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1725
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object v3

    if-nez v3, :cond_1

    .line 1727
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "111@example.com"

    return-object p0

    .line 1732
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_2

    .line 1733
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v0, "sip:%s@ims.bell.ca"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1734
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_4

    const-string p0, "+82"

    .line 1735
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    .line 1736
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1738
    :cond_3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v0, "sip:%s@lte-lguplus.co.kr"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1740
    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    aget v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDevMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1886
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getEfImpuList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 1817
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    .line 1818
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1821
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getEmergencyImpu()Ljava/lang/String;
    .locals 3

    .line 1858
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1859
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    if-nez v0, :cond_4

    .line 1866
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 1868
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_2

    .line 1870
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1874
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 1877
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGtsAppInstalled()Z
    .locals 0

    .line 1958
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return p0
.end method

.method public getHighestPriorityEhplmn()Ljava/lang/String;
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    return-object p0
.end method

.method getISimDataValidity()I
    .locals 8

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "isIsimDataValid: "

    const-string v5, "SimManager"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 682
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 683
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    or-int/2addr v6, v3

    .line 675
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 687
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v2

    or-int/2addr v6, v2

    .line 689
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 693
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    .line 696
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v1

    or-int/2addr v6, v1

    .line 697
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return v6
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpuFromIsim(I)Ljava/lang/String;
    .locals 2

    .line 1847
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1849
    array-length v0, p0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1853
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImpuFromSim()Ljava/lang/String;
    .locals 3

    .line 1828
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1830
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1831
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1834
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1836
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v1, p0

    :cond_3
    return-object v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1649
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 1654
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getImsiFromImpi()Ljava/lang/String;
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1667
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 723
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "SimManager"

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 746
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getIsimAuthentication calling - AppType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 750
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v5, 0x2

    .line 751
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    move v6, v7

    move v5, v8

    goto :goto_0

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",REQ ISIM AUTH"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v5, 0x10000020

    invoke-static {v5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 755
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 756
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    const/16 v6, 0x81

    invoke-interface {v2, v5, p2, v6, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 758
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 764
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidAkaResponse(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 765
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsimAuthentication result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const-string p0, "mGI="

    return-object p0

    .line 771
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "null"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    .line 778
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LEN:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x10000021

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 783
    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    new-instance p2, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/2addr v0, v3

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 790
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultBytes.length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 791
    :goto_1
    array-length p0, p1

    if-ge v4, p0, :cond_5

    .line 793
    aget-byte p0, p1, v4

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    const-string v0, "0123456789abcdef"

    .line 794
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    aget-byte p0, p1, v4

    and-int/lit8 p0, p0, 0xf

    .line 796
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 798
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decoded result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p1

    .line 785
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode the AKA RESPONSE - retry as MAC ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "9862"

    return-object p0

    .line 772
    :cond_6
    :goto_2
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string p2, "getIccAuthentication failed"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 773
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 774
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateEmergencyTaskByAuthFailure(I)V

    :cond_7
    return-object v0

    .line 742
    :cond_8
    :goto_3
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter - AppType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nonce : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 1638
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 1643
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1907
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "DEFAULT"

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getMnoInfo()Landroid/content/ContentValues;
    .locals 1

    .line 1950
    new-instance v0, Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1963
    sget-char p0, Lcom/sec/internal/constants/Mno;->GC_DELIMITER:C

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1965
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1891
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getNetworkNames()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 548
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 554
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperatorFromImpi()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 562
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 564
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 565
    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 564
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimCountryIsoForSubId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1902
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getSimMnoName()Ljava/lang/String;
    .locals 0

    .line 1912
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    return-object p0
.end method

.method getSimMobilityType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)I"
        }
    .end annotation

    .line 1984
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1985
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 1988
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1990
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1991
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_1
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .line 612
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 618
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "310999"

    return-object p0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator: value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getSimOperatorFromImpi()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 634
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 1695
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSlotCount()I
    .locals 0

    .line 1593
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 0

    .line 1606
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method public getSimState()I
    .locals 2

    .line 1700
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1701
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1702
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p0

    return p0

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 1945
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1598
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v0, :cond_0

    .line 1599
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1601
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p0
.end method

.method handldle_Locked(Ljava/lang/String;)V
    .locals 5

    .line 1318
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    .line 1321
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SIM LOCKED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1326
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(locked): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1328
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.smf.mnoname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1335
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hassim"

    .line 1336
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1337
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mvnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imsSwitchType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1341
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1342
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->isOneOf([Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1345
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1539
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1541
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1564
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez p1, :cond_0

    .line 1565
    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    goto :goto_0

    .line 1570
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1571
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateGlobalSetting(I)V

    goto :goto_0

    .line 1560
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onADSChanged(I)V

    goto :goto_0

    .line 1556
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthFailed()V

    goto :goto_0

    .line 1552
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRefresh()V

    goto :goto_0

    .line 1548
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyUiccChanged()V

    goto :goto_0

    .line 1543
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimStateChanged()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1350
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SimManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1351
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "handleSimChange: SIM is ready."

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    goto :goto_0

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 1360
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1361
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 1363
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1364
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getEventType(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "EVTT"

    .line 1363
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "SCID"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1366
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1367
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x10

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "GID1"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "ISIM"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "VLTS"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "VILS"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isGBASupported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1377
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result p1

    or-int/2addr p1, v3

    goto :goto_1

    :cond_2
    move p1, v3

    .line 1381
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->hasValidMsisdn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1382
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr p1, v4

    .line 1383
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Invalid MSISDN"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-lez p1, :cond_4

    const-string v5, "SMVL"

    .line 1388
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz p1, :cond_5

    .line 1393
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p1

    if-lez p1, :cond_5

    const-string v5, "ISVL"

    .line 1395
    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "block_regi_on_invalid_isim"

    invoke-static {v5, v6, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1398
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: invalid ISIM!"

    invoke-static {v2, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1399
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1400
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "INVALID_FIELD"

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",INVLD ISIM,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x10000005

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1406
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v2, "SIMI"

    invoke-static {p1, v1, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1409
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1410
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v4, :cond_8

    .line 1413
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_3

    .line 1415
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimAppLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1417
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz p1, :cond_7

    .line 1418
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo p2, "send simstate, isim loaded"

    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    const-string p1, "ISIM_LOADED"

    .line 1420
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    const-string p1, "DELAYED_ISIM_LOAD"

    .line 1424
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method handleSubscriptionId()Z
    .locals 5

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-nez v0, :cond_0

    .line 940
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SubscriptionManager is null, should not happen"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 944
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 946
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "onSimStateChange:[LOADED] subInfo is not created yet. retry in 1 sec."

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NO SUBINFO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000002

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 949
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :cond_1
    const-string v0, "LOADED"

    .line 951
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    .line 955
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 956
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    return v3
.end method

.method handleVsim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 925
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 926
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "Enable virtual SIM"

    const-string v1, "SimManager"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 927
    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 p2, 0x1

    .line 928
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 929
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "VSIM LOADED"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "LOADED"

    .line 931
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    :cond_1
    :goto_0
    return-void
.end method

.method handle_Delayed_IsimLoaded()Z
    .locals 3

    .line 1180
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1183
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method handle_IsimLoaded()Z
    .locals 4

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1190
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1192
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    .line 1194
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move v0, v1

    .line 1197
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 1199
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "fix for exceptional case : LOADED notified before ISIM_LOADED"

    const-string v3, "SimManager"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    .line 1203
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    return v0
.end method

.method handle_Loaded(Ljava/lang/String;)Z
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 962
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "LOADED"

    .line 963
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 965
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v5

    if-nez v5, :cond_0

    .line 967
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v2

    .line 971
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    if-eqz v4, :cond_21

    .line 976
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidOperator(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x3e8

    const-string v8, "SimManager"

    const/4 v9, 0x0

    if-nez v5, :cond_2

    .line 977
    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "onSimStateChange: [LOADED] but operator is invalid. retry in 1 sec."

    invoke-static {v8, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",INVLD OP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000001

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 980
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 981
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v9

    .line 985
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    move-result v5

    if-nez v5, :cond_3

    return v9

    .line 989
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 990
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v10

    .line 991
    iget-object v11, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 992
    iget-object v12, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v12

    .line 993
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v15

    .line 995
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid1:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid2:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " impi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spname:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 995
    invoke-virtual {v13, v14, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 997
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 998
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "onSimStateChange: [LOADED] but imsi is invalid. retry in 1 sec."

    invoke-static {v8, v1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",INVLD IMSI,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    .line 1000
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v4, "null"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000003

    .line 999
    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1002
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1003
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    return v0

    :cond_5
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v6, "unknown"

    .line 1008
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1010
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1011
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1013
    :cond_6
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMC_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mDevMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1015
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1016
    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1017
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMCNW_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mNetMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v3

    .line 1025
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/os/ImsCscFeature;->clear(I)V

    const-string v3, "00101"

    .line 1027
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CPW"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1028
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "(CPW) & 00101 sim card, Enable GCF mode"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1029
    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Z)V

    :cond_7
    const-string v3, ""

    .line 1032
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    .line 1034
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1035
    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    const/4 v6, 0x0

    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1037
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v3, :cond_9

    .line 1038
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "mnomap is empty"

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1039
    new-instance v3, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v3, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    :cond_9
    if-eqz v10, :cond_c

    .line 1042
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1043
    invoke-static {v10}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1046
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_a
    move-object v6, v5

    .line 1048
    :goto_1
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v3

    move-object v7, v15

    move-object v15, v6

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1049
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    .line 1050
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MnoNameFromImpi: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SIM Mno: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1051
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1052
    :cond_b
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    .line 1053
    iput-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    move-object v1, v3

    move-object v5, v6

    goto :goto_2

    :cond_c
    move-object v7, v15

    .line 1057
    :cond_d
    :goto_2
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1059
    invoke-interface {v7, v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 1058
    invoke-virtual {v3, v2, v1, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;->changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isMnoHasGcBlockExtension(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    .line 1062
    :goto_3
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isGlobalGcEnabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1063
    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v3, 0x0

    .line 1067
    :cond_f
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    const-string v6, "LABSIM"

    .line 1069
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1070
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1071
    iput-boolean v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    const/4 v3, 0x0

    goto :goto_4

    .line 1074
    :cond_10
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1075
    iput-boolean v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 1080
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_12

    const-string v2, "SUP"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1081
    :cond_11
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "With SUP CSC or GtsAppInstalled, use GCF profile for GTS testing."

    invoke-static {v8, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1082
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1085
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_13

    const-string v2, "DEFAULT"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1086
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "handle_Loaded: Mno.GENERIC Update Name, Country, Region"

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1087
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->updateGenerictMno(Ljava/lang/String;)V

    .line 1088
    sget-object v2, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    goto :goto_5

    :cond_13
    const/4 v6, 0x0

    :goto_5
    move/from16 v19, v3

    .line 1092
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.smf.mnoname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|LOADED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM PLMN: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mSimMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1095
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1098
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hassim"

    .line 1101
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "globalgcenabled"

    .line 1102
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "mnoname"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "mvnoname"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imsi"

    .line 1105
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3, v5, v7, v9, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->updateCommonHeader(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->checkOutBoundSIM()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 1114
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3, v5}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1115
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMobilityType(Ljava/util/List;)I

    move-result v3

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x4

    if-ne v5, v7, :cond_15

    :cond_14
    :goto_7
    move v6, v9

    goto/16 :goto_a

    .line 1119
    :cond_15
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKDIMhs()Z

    move-result v5

    const/4 v7, 0x5

    if-nez v5, :cond_1e

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->isCctChaCbrsMsoSim(I)Z

    move-result v5

    if-eqz v5, :cond_16

    goto/16 :goto_8

    :cond_16
    if-lez v3, :cond_1b

    const-string/jumbo v5, "simMoType"

    .line 1124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_17

    if-ne v3, v5, :cond_18

    .line 1127
    :cond_17
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "isSimMobilityForVoLTE true"

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1128
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v6, v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSimMobilityImsSwitchSetting(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_18
    const/4 v6, 0x2

    if-eq v3, v6, :cond_19

    if-ne v3, v5, :cond_1a

    .line 1132
    :cond_19
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "isSimMobilityForRcs true"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1133
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1134
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_1a
    move v6, v5

    goto :goto_a

    .line 1136
    :cond_1b
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1141
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "for XAS use internal IMSSetting"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getXasImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_7

    .line 1144
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->useImsSwitch()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1145
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v1, :cond_14

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1147
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "GTS installed"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    .line 1155
    :cond_1d
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turned off all switches for OutBoundSIM && not SimMo"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_9

    .line 1120
    :cond_1e
    :goto_8
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turning off all switches for Non-Ims SIM"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_9
    move v6, v7

    :cond_1f
    :goto_a
    const-string v1, "imsSwitchType"

    .line 1163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    if-ne v6, v9, :cond_20

    .line 1167
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1170
    :cond_20
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v1, :cond_21

    .line 1171
    iget v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "handle_Loaded: need to update ADS again when imsservice restarted"

    invoke-static {v8, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    :cond_21
    return v4
.end method

.method handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "LOADED"

    const/4 v1, 0x1

    .line 1210
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "UNKNOWN"

    .line 1218
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 1219
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1220
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1221
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1222
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1225
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1226
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "SIM UNKNOWN"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1227
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(unknown): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1229
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1235
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hassim"

    .line 1236
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1241
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1242
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1213
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimNotReady()V

    return-void
.end method

.method handle_absent(Ljava/lang/String;Z)V
    .locals 11

    .line 1247
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1249
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "LOADED"

    const/4 v2, 0x1

    .line 1252
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1253
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->resetCarrierFeatureHash()V

    .line 1254
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v4, "imsSwitchType"

    const-string v5, "hassim"

    const/4 v6, 0x0

    .line 1268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "mvnoname"

    const-string v9, "mnoname"

    if-eq v1, v3, :cond_7

    .line 1254
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "SIM ABSENT"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1277
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1278
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p1, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    .line 1284
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1286
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1288
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1290
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1291
    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1292
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OMCNW_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1294
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1301
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1302
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1308
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    if-eqz p2, :cond_3

    .line 1309
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne v0, p2, :cond_6

    .line 1310
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1312
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 1313
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    :cond_6
    :goto_0
    return-void

    .line 1256
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SIM REMOVED"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRemoved()V

    .line 1259
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v9}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1261
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1263
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1264
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1265
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1266
    invoke-virtual {p2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v8}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    return-void
.end method

.method public hasIsim()Z
    .locals 6

    .line 570
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    .line 572
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v4, "SimManager"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 578
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 579
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim safariCom_kenya : false"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 583
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    .line 584
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsim: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v2, "use_usim_on_invalid_isim"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-eqz v0, :cond_6

    .line 587
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    move v0, v5

    :cond_7
    return v0
.end method

.method public hasNoSim()Z
    .locals 1

    .line 505
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVsim()Z
    .locals 0

    .line 596
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p0

    return p0
.end method

.method public initSequentially()V
    .locals 8

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.intent.isim_refresh"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ISIM_LOADED"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.isim_refresh_fail_recovery"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    .line 373
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    .line 374
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 378
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "init mno map"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 379
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected initializeSimState()V
    .locals 6

    const/4 v0, 0x0

    .line 1429
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1430
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSimState (gsm.sim.state) : =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1432
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "LOADED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1436
    :pswitch_0
    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1441
    :pswitch_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1442
    invoke-virtual {p0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEsim()Z
    .locals 2

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ril.simslottype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGBASupported()Z
    .locals 3

    .line 651
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    .line 657
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGbaSupported ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method isISimAppLoaded()Z
    .locals 5

    .line 514
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isISimAppLoaded : simstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subscriptionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isISimAppPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getboolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "block_regi_on_invalid_isim"

    const/4 v4, 0x1

    .line 515
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isISimDataValid() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    .line 514
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 517
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    return v4

    :cond_2
    return v2
.end method

.method public isISimDataValid()Z
    .locals 0

    .line 663
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLabSimCard()Z
    .locals 3

    .line 639
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLabSimCard: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isLabSim ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isMnoHasGcBlockExtension(Ljava/lang/String;)Z
    .locals 0

    .line 1971
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutBoundSIM()Z
    .locals 3

    .line 645
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutBoundSIM: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isOutBoundSIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimAvailable()Z
    .locals 3

    .line 499
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsimLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIsim():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimLoaded()Z
    .locals 1

    .line 1628
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 878
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidOperator(Ljava/lang/String;)Z
    .locals 0

    .line 874
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyADSChanged(I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1581
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifyMnoChanged()V
    .locals 4

    .line 1482
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1483
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMnoChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method notifySimReady(Ljava/lang/String;)V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimReady: state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOTI SIM EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000001f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 413
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 414
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "SimManager"

    .line 415
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v4, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 421
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SimManager"

    .line 425
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM READY by needHandleLoadedAgain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 422
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 430
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter p1

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 432
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    goto :goto_3

    .line 434
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method notifySimStateChanged()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyUiccChanged()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method onADSChanged(I)V
    .locals 2

    .line 1585
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, v0, :cond_1

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyMnoChanged()V

    :cond_1
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "enableIms"

    const-string v2, "enableServiceVowifi"

    const-string v3, "enableServiceSmsip"

    const-string v4, "enableServiceVilte"

    const-string v5, "enableServiceVolte"

    const-string v6, "enableServiceRcs"

    const-string v7, "enableServiceRcschat"

    .line 297
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    .line 303
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 307
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 309
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", onImsSwitchUpdated : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method

.method protected onSimNotReady()V
    .locals 3

    .line 1526
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimNotReady"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1528
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1529
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1530
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1531
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1533
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1534
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method onSimRefresh()V
    .locals 3

    .line 1492
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "onSimRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SIM REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000000f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1495
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1496
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1497
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1498
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1503
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1504
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1505
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRefresh()V

    .line 1508
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimRemoved()V
    .locals 3

    .line 1516
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "onSimRemoved:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1517
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1518
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1519
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1521
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1522
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimStateChange(Ljava/lang/String;)V
    .locals 5

    .line 887
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    .line 891
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimStateChange: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], operator: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",,EVT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleVsim(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "LOADED"

    .line 900
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 901
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "mnoname"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Loaded(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string v2, "DELAYED_ISIM_LOAD"

    .line 903
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Delayed_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_2
    const-string v2, "ISIM_LOADED"

    .line 905
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 906
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_IsimLoaded()Z

    move-result p1

    goto :goto_0

    :cond_3
    const-string v2, "NOT_READY"

    .line 907
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "ABSENT"

    .line 910
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 911
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_absent(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const-string v1, "LOCKED"

    .line 913
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 914
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handldle_Locked(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 919
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 908
    :cond_8
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onSoftphoneAuthDone(Ljava/lang/String;)V
    .locals 3

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LEN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 838
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000031

    .line 837
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 841
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 846
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "aka failed"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 847
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method onSoftphoneAuthFailed()V
    .locals 3

    .line 852
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "onSoftphoneAuthFailed"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    const/16 v0, 0x2e

    iput v0, p0, Landroid/os/Message;->what:I

    .line 855
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 393
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Register for sim ready"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 397
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 398
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 399
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 2

    .line 1672
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1673
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_1

    .line 1677
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 1674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 807
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 808
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 814
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 816
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 817
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2

    .line 823
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    .line 824
    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSoftphoneAuthentication, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 825
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",REQ AUTH"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, 0x10000030

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 827
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "nonce"

    .line 829
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "impi"

    .line 830
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 831
    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p3, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected setGtsAppInstalled(Z)V
    .locals 0

    .line 1954
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return-void
.end method

.method public setIsimLoaded()V
    .locals 1

    const-string v0, "ISIM_LOADED"

    .line 510
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    return-void
.end method

.method setSimMno(Lcom/sec/internal/constants/Mno;Z)V
    .locals 1

    .line 1450
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, p1}, Lcom/sec/internal/helper/SimUtil;->setSimMno(ILcom/sec/internal/constants/Mno;)V

    if-eqz p2, :cond_0

    .line 1452
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSimRefreshed()V
    .locals 2

    .line 601
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v0, "setSimRefreshed:"

    const-string v1, "SimManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    monitor-enter p0

    .line 1616
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SimManager"

    .line 1617
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubscriptionInfo : mSubscriptionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSimSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1617
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1619
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1620
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1621
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    const-string p1, "SimManager"

    .line 1622
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored EHPLMN ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateGlobalSetting(I)V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "imsSwitchType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "enableIms"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v3, "enableServiceVolte"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 320
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v4, "enableServiceVowifi"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_1
    const-string v0, "SimManager"

    const-string/jumbo v1, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable"

    .line 323
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 325
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v2, "CS"

    const-string v3, "emergency_domain_setting"

    const-string/jumbo v4, "voice_domain_pref_eutran"

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "PS"

    .line 328
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 331
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "ss_domain_setting"

    const-string v3, "CS_ALWAYS"

    .line 334
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ussd_domain_setting"

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 338
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method updateMno(Landroid/content/ContentValues;)V
    .locals 6

    .line 1457
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v1, "updateMno:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1458
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "phoneId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "imsi"

    .line 1462
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 1463
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "imsSwitchType"

    .line 1466
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    .line 1467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1469
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 1471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x1000000d

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1472
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 1475
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x1000000e

    .line 1474
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1478
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyMnoChanged()V

    return-void
.end method

.method updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 863
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 864
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 866
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_1

    .line 867
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method useImsSwitch()Z
    .locals 2

    .line 882
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    const-string v0, "GCF"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUP"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
