.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.super Landroid/os/Handler;
.source "CmcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;
    }
.end annotation


# static fields
.field private static final CMC_HANDOVER_TIMER_VALUE:I = 0x1770

.field private static final CMC_PD_CHECK_TIMER_VALUE:I = 0x14

.field private static final DIVIDABLE64:I = 0x3f

.field private static final DUMMY_CALL_DOMAIN:I = 0x9

.field private static final DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI:J = 0x1f4L

.field private static final EVENT_OPTIONS_EVENT:I = 0x20

.field private static final EVENT_P2P_OPTIONS_EVENT:I = 0x1f

.field private static final EVT_CMC_HANDOVER_TIMER:I = 0x22

.field private static final EVT_CMC_INFO_EVENT:I = 0x23

.field private static final EVT_CMC_PD_CHECK_TIMER:I = 0x21

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCmcCallEstablishTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcHandoverTimer:Landroid/os/Message;

.field private final mCmcPdCheckTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcTotalMnoPullable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCsPublishDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/PublishDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mExtConfirmedCsCallCnt:I

.field private mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private final mIsCmcPdCheckRespReceived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsP2pDiscoveryDone:Z

.field private mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

.field private mLastCmcEndCallReason:I

.field private mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field private mNeedToNotifyAfterP2pDiscovery:Z

.field private mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field private mNumOfActiveSDs:I

.field private mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field private mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

.field private mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPublishDigest:Ljava/security/MessageDigest;

.field private mSendPublishHashedXml:[B

.field private mSendPublishInvokeCount:I

.field private mSendPublishInvokeTime:J

.field private mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCmcPdCheckRespReceived(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCmcDialogEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)[Lcom/sec/ims/DialogEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsP2pDiscoveryDone(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCmcEndCallReason(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedToNotifyAfterP2pDiscovery(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mprintP2pList(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v0, 0xc8

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 89
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 106
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 107
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 115
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;",
            "Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;",
            "I)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v1, 0xc8

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 93
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 106
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 123
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 124
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 125
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 126
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 127
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 129
    new-array p2, p8, [Lcom/sec/ims/DialogEvent;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 130
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    :try_start_0
    const-string p1, "SHA-1"

    .line 132
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkIgnorePublishDialogCase(IZZ)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1118
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CallType is unknown"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkPdAvailability(ILandroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "uri"

    .line 1494
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "reg_id"

    .line 1495
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "is_first_check"

    .line 1496
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1498
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdAvailability(), isFirstCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1500
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "no 200 OK(OPTION) response from PD, remove pulling UI"

    .line 1505
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1507
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    .line 1509
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1510
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_1
    const/16 p1, 0xc8

    .line 1512
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_1

    .line 1501
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {p2, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestSendCmcCheckMsg(IILjava/lang/String;)V

    const-wide/16 v3, 0x4e20

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 1502
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1503
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private clearAllCallsForCmcHandover(I)V
    .locals 3

    .line 232
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCallsForCmcHandover cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSessionByCmcType(I)V

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    return-void
.end method

.method private getActiveCmcCallEstablishTime()J
    .locals 4

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 894
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCmcCallEstablishTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 1126
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 1128
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forced InCall state change for fast establishment [delayed ACK case]"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    :cond_0
    return-object p1
.end method

.method private getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .locals 1

    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method private getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I
    .locals 2

    .line 1143
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session.mRemoteHeld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 0

    .line 1136
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 417
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 420
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 423
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external VoLTE Call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 428
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external CS call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    goto :goto_0

    .line 431
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDummyPublishDialog because do not have external call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto :goto_0

    .line 435
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "exist Active PD callsession. do not send PUBLISH msg."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDuplicatedPublishDialog(Ljava/lang/String;)Z
    .locals 6

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 917
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 923
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 924
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    and-int/lit8 v1, v0, 0x3f

    if-nez v1, :cond_0

    .line 926
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[%d] sendPublishDialog duplicated."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/16 p0, 0x32

    if-le v0, p0, :cond_2

    .line 930
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 931
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many sendPublishDialog is called in very short time!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v1

    .line 935
    :cond_3
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 936
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    :cond_4
    return v1
.end method

.method private makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 1

    .line 1620
    new-instance p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>()V

    .line 1623
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setReplaceSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1624
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1625
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1626
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1627
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEmergencyRat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1628
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setUrn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1629
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCLI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1630
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConferenceCall(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1631
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1632
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1633
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1634
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcBoundSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1635
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1636
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setForceCSFB(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1637
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1638
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1639
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1640
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 1644
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1614
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcHandoverTimerExpired handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1615
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1616
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    return-void
.end method

.method private printP2pList()V
    .locals 6

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz p0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 443
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 447
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PD"

    goto :goto_1

    :cond_0
    const-string v2, "SD"

    .line 448
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", device id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7000000b

    .line 449
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 5

    .line 1411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1412
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_0

    .line 1414
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasSipCallId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1415
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1419
    :cond_1
    new-instance p0, Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1420
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1421
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    return-object p0
.end method

.method public forwardCmcRecordingEventToSD(IIII)V
    .locals 3

    .line 1518
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forwardCmcRecordingEventToSD, recordEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->convertRecordEventForCmcInfo(I)I

    move-result p2

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordInfoMsgEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1525
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1527
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1528
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    .line 1529
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "send CmcRecordingEvent to SD during cmc call relay"

    .line 1532
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object p1

    .line 1535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "record_event"

    .line 1536
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra"

    .line 1537
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "sip_call_id"

    .line 1538
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p4, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendCmcInfo(ILandroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;Z)[I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 1013
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v4, :cond_10

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1014
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 1015
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1021
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    .line 1024
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    const/4 v14, 0x1

    const/16 v27, 0x0

    if-eqz v7, :cond_1

    .line 1025
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Emergency call, ignore to send PUBLISH msg"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 1027
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1028
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v14

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v5, v27

    .line 1033
    :goto_2
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canSendPublish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    .line 1035
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    .line 1036
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";gr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1037
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1038
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v11, "test_local_tag"

    const-string/jumbo v12, "test_remote_tag"

    .line 1041
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 1045
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    iget-boolean v10, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    invoke-direct {v0, v8, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    .line 1049
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v10

    xor-int/lit8 v20, v10, 0x1

    .line 1053
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyAudioCall(I)Z

    move-result v10

    .line 1054
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyVideoCall(I)Z

    move-result v15

    .line 1056
    invoke-direct {v0, v6, v10, v15}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkIgnorePublishDialogCase(IZZ)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_0

    .line 1062
    :cond_3
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1064
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    .line 1065
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v15

    move/from16 v23, v10

    move/from16 v24, v15

    move/from16 v10, v27

    goto :goto_4

    .line 1066
    :cond_4
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 1071
    :cond_5
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    move/from16 v23, v10

    move v10, v14

    move/from16 v24, v27

    goto :goto_4

    :cond_6
    :goto_3
    const-string/jumbo v10, "pullable false for RTT/TTY call"

    .line 1067
    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v27

    move/from16 v23, v10

    move/from16 v24, v23

    .line 1074
    :goto_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v7, "Conference call"

    move-object/from16 v21, v7

    move/from16 v10, v27

    goto :goto_5

    :cond_7
    move-object/from16 v21, v7

    .line 1080
    :goto_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v7

    invoke-direct {v0, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I

    move-result v15

    if-eq v15, v14, :cond_8

    move/from16 v10, v27

    :cond_8
    if-eqz v10, :cond_a

    if-nez p4, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v7, v27

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v14

    .line 1086
    :goto_7
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1087
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v10

    const/4 v14, 0x4

    if-eq v10, v14, :cond_b

    const/16 v28, 0x1

    goto :goto_8

    :cond_b
    move/from16 v28, v7

    .line 1091
    :goto_8
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v14, 0x1

    aget v7, v2, v14

    add-int/2addr v7, v14

    aput v7, v2, v14

    goto :goto_9

    :cond_c
    const/4 v14, 0x1

    .line 1094
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v7, :cond_d

    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v7, 0x2

    aget v10, v2, v7

    add-int/2addr v10, v14

    aput v10, v2, v7

    .line 1098
    :cond_e
    :goto_9
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v18

    .line 1100
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object v7, v10

    const-string v8, ""

    move/from16 v25, v15

    move-object v15, v8

    const-string v16, ""

    .line 1102
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v22

    const/16 v26, 0x0

    move-object v8, v5

    move-object v4, v10

    move-object v10, v5

    move-object v0, v13

    move-object/from16 v13, v17

    move/from16 v29, v14

    move-object/from16 v14, v19

    move-object/from16 v17, v21

    move/from16 v19, v20

    move/from16 v20, v6

    move/from16 v21, v25

    move/from16 v25, v28

    invoke-direct/range {v7 .. v26}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 1103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object/from16 v0, p3

    .line 1106
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object/from16 v0, p3

    :goto_a
    aget v4, v2, v27

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v27

    goto :goto_b

    :cond_10
    move-object/from16 v0, p3

    :goto_b
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_11
    return-object v2
.end method

.method public getCmcCallEstablishTime(Ljava/lang/String;)J
    .locals 4

    if-nez p1, :cond_0

    .line 874
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "callid is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 881
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId is not integer type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 885
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mCmcCallEstablishTimeMap is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 9

    .line 1655
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCmcCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    .line 1659
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1661
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1662
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-lez v5, :cond_0

    .line 1663
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    .line 1664
    :goto_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_2

    move v4, v5

    goto :goto_2

    .line 1666
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_5

    .line 1667
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_3

    goto :goto_1

    .line 1669
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1670
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1671
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1672
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    const/4 v4, 0x3

    goto :goto_2

    .line 1674
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    :goto_1
    move v4, v6

    goto :goto_2

    :cond_6
    move v2, v4

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    .line 1681
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/16 v3, 0x1777

    if-ne p0, v3, :cond_8

    const/4 v4, 0x4

    .line 1685
    :cond_8
    new-instance p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 1686
    invoke-virtual {p0, v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1687
    invoke-virtual {p0, v2}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1688
    invoke-virtual {p0, v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1689
    invoke-virtual {p0, v1}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1690
    invoke-virtual {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->build()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcPdRegPhoneId()I
    .locals 3

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1581
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1582
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1583
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1571
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1572
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcRegistration: found regId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1554
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1557
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1558
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCsCallPhoneIdByState(I)I
    .locals 5

    .line 541
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsCallPhoneIdByState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PublishDialog;

    .line 547
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v2

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 550
    aget v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 551
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone id for cs call : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "external CS call is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 261
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 272
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 273
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionCountByCmcType(II)I
    .locals 3

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 324
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 325
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I
    .locals 3

    if-eqz p2, :cond_0

    .line 904
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    .line 905
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    .line 906
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p0

    return p0

    .line 909
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "curReg null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1741
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1742
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1743
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received EVT_CMC_INFO_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    goto/16 :goto_1

    .line 1737
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1

    .line 1699
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkPdAvailability(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1703
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1704
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1705
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_OPTIONS_EVENT, isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1710
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1712
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionEvent regi handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1715
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_1

    .line 1716
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1717
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1718
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1719
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1721
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR Resopnse, remove pulling UI, optionFailReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1723
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    .line 1725
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1726
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_3
    const/16 p1, 0xc8

    .line 1728
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_1

    :cond_4
    const-string p0, "CmcPdCheckTimer is not running"

    .line 1731
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1748
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1749
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1750
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_P2P_OPTIONS_EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    .line 1754
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/google/SecImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasActiveCmcCallsession(I)Z
    .locals 3

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 294
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method hasDialingOrIncomingCall()Z
    .locals 2

    .line 1269
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1270
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1271
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method hasInternalCallToIgnorePublishDialog(I)Z
    .locals 4

    .line 1157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1158
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1162
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1164
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    .line 1167
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public init()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 1229
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 1231
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCallServiceAvailableOnSecondary phoneId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {v1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1235
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "disallow Call Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCmcRegExist(I)Z
    .locals 3

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 518
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "urn:duid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PD deviceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 523
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 524
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2p deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PD and SD are in P2P area"

    .line 527
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method isNeedDelayToSendPublishDialog(I)Z
    .locals 4

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1180
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1186
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1187
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1188
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method isP2pDiscoveryDone()Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return p0
.end method

.method onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 10

    .line 1346
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1350
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_a

    const/4 v3, 0x0

    .line 1356
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 1358
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1359
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 1363
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-nez v6, :cond_6

    .line 1364
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 1365
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1366
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    if-ne v8, v2, :cond_3

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v8

    if-eq v8, v3, :cond_3

    .line 1367
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v9, :cond_4

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-nez v5, :cond_9

    .line 1372
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_9

    if-eqz p2, :cond_9

    .line 1374
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-ne v6, v2, :cond_9

    .line 1375
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveExtCallCount()I

    move-result v6

    if-lez v6, :cond_8

    if-nez v5, :cond_8

    .line 1376
    iget-boolean v5, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    if-eqz v5, :cond_7

    .line 1378
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1777

    if-ne v5, v6, :cond_8

    .line 1379
    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1382
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 1383
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    const-string v5, "99991111222"

    invoke-virtual {p0, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_a
    if-eqz p2, :cond_b

    .line 1388
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1389
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    :cond_b
    return-void
.end method

.method public onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 4

    .line 335
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcDtmfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_2

    .line 346
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcDtmfEvent(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 9

    .line 1426
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1428
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1430
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Filter DialogEvent"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    .line 1434
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_1

    .line 1435
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1441
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1442
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1443
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1444
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not send OPTIONS until P2P discovery done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1446
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1447
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD and SD are not in P2P area"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPriDeviceIdWithURN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_2

    .line 1458
    :cond_5
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No cofirmed Dilaog in nofity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    const/16 p1, 0xc8

    .line 1460
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 1462
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aput-object p2, p0, p1

    :cond_6
    return-object p2
.end method

.method public onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 2

    .line 1546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcRecordingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1547
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1549
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    :cond_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 182
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stop Nsd when deregistered"

    .line 185
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->stop()V

    .line 187
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    const/4 p2, 0x0

    .line 188
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 189
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 190
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 191
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-object p2, p2, v1

    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    :cond_0
    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    .line 198
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 203
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistering reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 205
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "onDeregistering: Send dummy publish dialog before deregistered"

    .line 207
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    :cond_0
    if-ne v1, v3, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 212
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 1279
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_6

    const/4 v3, 0x0

    .line 1286
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1287
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_5

    .line 1289
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1291
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1292
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_1

    move v3, v1

    :cond_1
    if-nez v3, :cond_5

    .line 1296
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1300
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1301
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1303
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v3

    .line 1304
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1305
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    if-eq v5, v1, :cond_4

    if-le v3, v1, :cond_5

    .line 1307
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method

.method onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    if-eqz p2, :cond_3

    .line 1317
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 1321
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_3

    const/4 v3, 0x0

    .line 1328
    invoke-virtual {p0, p2, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1329
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    .line 1331
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1333
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_1

    move v3, v1

    :cond_1
    if-nez v3, :cond_2

    .line 1338
    invoke-virtual {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    return-void
.end method

.method onImsIncomingCallEvent(II)V
    .locals 7

    .line 1244
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_4

    const/4 v3, 0x0

    .line 1250
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    .line 1253
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1254
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v3, v1

    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 1259
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    .line 1264
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 220
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegEventContactUriNotification prevNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    .line 224
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    if-lez v2, :cond_0

    if-eq v2, v0, :cond_0

    const-string/jumbo v0, "send Publish when registered"

    .line 226
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 145
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 146
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;->setP2pRegiInfo(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    goto/16 :goto_0

    .line 152
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 155
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "do cmc handover"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 159
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 162
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 165
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 166
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    .line 169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 174
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmtel Registered ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method sendCmcCallStateForRcs(ILjava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1397
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCmcCallStateForRcs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    .line 1399
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_IS_INCOMING"

    .line 1400
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_TEL_NUMBER"

    .line 1401
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_PHONE_ID"

    .line 1402
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string p2, "EXTRA_CALL_EVENT"

    .line 1403
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CALL"

    .line 1404
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_CMC_CONNECTED"

    .line 1405
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public sendDummyPublishDialog(II)V
    .locals 4

    .line 239
    new-instance v0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    const/16 v2, 0x270f

    .line 241
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/16 v2, 0x9

    .line 242
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 244
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    const-string v3, ""

    .line 246
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 250
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    const-wide/16 v1, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    .line 253
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
    .locals 54

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p3

    .line 563
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v13

    .line 564
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v12

    .line 565
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v11

    .line 566
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v21

    .line 567
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v22

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v23

    .line 569
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v24

    .line 570
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v1

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v25

    .line 572
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v2

    .line 573
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v26

    .line 575
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_31

    .line 580
    array-length v3, v12

    const/4 v7, 0x1

    if-lt v3, v7, :cond_31

    if-eqz v11, :cond_31

    array-length v3, v11

    if-ge v3, v7, :cond_0

    goto/16 :goto_1f

    :cond_0
    const/4 v6, 0x0

    .line 585
    aget v3, v11, v6

    const/4 v5, 0x3

    const/4 v4, 0x2

    if-ne v3, v7, :cond_7

    .line 587
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v3

    .line 589
    aget v9, v21, v6

    if-ne v9, v5, :cond_2

    aget v3, v3, v6

    if-eq v9, v3, :cond_2

    goto :goto_0

    .line 594
    :cond_1
    aget v3, v21, v6

    if-ne v3, v5, :cond_2

    :goto_0
    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    .line 600
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, v14, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 602
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Send 180 Ringing msg for CMC CS call."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v9, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 607
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    move v9, v3

    :goto_2
    if-ge v3, v13, :cond_5

    .line 611
    aget v10, v21, v3

    invoke-static {v10}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 615
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExtConfirmedCsCallCnt: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", extConfirmedCsCallCnt: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    if-eq v3, v9, :cond_6

    .line 617
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v3, v15, v9}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->updateCmcExtCallCount(II)I

    .line 619
    :cond_6
    iput v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 623
    :cond_7
    invoke-virtual {v0, v15, v6, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v27

    if-nez v27, :cond_8

    return-void

    .line 628
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move v3, v6

    :goto_3
    const-string v5, ","

    if-ge v3, v13, :cond_a

    .line 630
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v12, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v11, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v21, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v22, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v23, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v25, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v26, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v3

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x70000001

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 633
    aget v4, v21, v3

    if-ne v4, v7, :cond_9

    .line 634
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    aget v5, v12, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-wide v9, v2, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto :goto_3

    .line 638
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasInternalCallToIgnorePublishDialog(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 639
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : PD has internal call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isNeedDelayToSendPublishDialog(I)Z

    move-result v28

    .line 645
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v29

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 649
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eqz v1, :cond_d

    move v9, v6

    .line 651
    :goto_4
    array-length v10, v1

    if-ge v9, v10, :cond_d

    .line 652
    aget-boolean v10, v1, v9

    if-nez v10, :cond_c

    .line 653
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    goto :goto_5

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    move v1, v6

    move v9, v1

    move v10, v9

    move/from16 v31, v10

    move/from16 v30, v7

    :goto_6
    const-string v6, ";gr="

    if-ge v10, v13, :cond_27

    const-string/jumbo v19, "test_local_tag"

    const-string/jumbo v32, "test_remote_tag"

    .line 684
    sget-object v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v5

    const-string v5, "[CallInfo #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] callId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v12, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", domain: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v11, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callState: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v21, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v22, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callDirections: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v23, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remoteUris: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v24, v10

    .line 685
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmcType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    aget v3, v11, v10

    const/4 v5, 0x2

    if-ne v3, v5, :cond_f

    .line 690
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eq v2, v3, :cond_e

    .line 691
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Trying call sendPublishDialogInternal(). CmcTotalMnoPullable changed : %s ==> %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0, v15, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    move-object/from16 v49, p2

    move-object/from16 v48, v4

    move-object v15, v8

    move-object/from16 v32, v11

    move/from16 v53, v13

    move-object/from16 v50, v34

    goto/16 :goto_18

    :cond_e
    move/from16 v35, v2

    goto :goto_8

    :cond_f
    if-eq v3, v5, :cond_26

    .line 699
    aget v3, v12, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v35, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    aget-object v2, v24, v10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    aget v6, v25, v10

    move-object/from16 v36, v2

    const/4 v2, 0x2

    if-ne v6, v2, :cond_10

    const-string v2, "anonymous"

    goto :goto_7

    .line 709
    :cond_10
    aget-object v2, v24, v10

    .line 712
    :goto_7
    aget v6, v23, v10

    .line 713
    aget v37, v21, v10

    invoke-static/range {v37 .. v37}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v37

    move-object/from16 v38, v2

    .line 715
    aget v2, v22, v10

    move-object/from16 v39, v3

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_11

    const-string v2, "ignore publish dialog when call type is 911 (Emergency)"

    .line 716
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v49, p2

    move-object/from16 v48, v4

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    :goto_9
    const/16 v34, 0x0

    goto/16 :goto_17

    .line 718
    :cond_11
    aget-boolean v3, v26, v10

    move-object/from16 v41, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 720
    aget v2, v21, v10

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    const/16 v30, 0x2

    :goto_a
    const/16 v31, 0x1

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_14

    const/4 v3, 0x7

    if-eq v2, v3, :cond_14

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    goto :goto_b

    :cond_13
    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    goto :goto_a

    :cond_14
    :goto_b
    move-object/from16 v49, p2

    move-object v15, v8

    move v0, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move/from16 v53, v13

    move-object/from16 v50, v34

    move-object/from16 v48, v41

    const/16 v30, 0x0

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_1d

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_16

    move v4, v3

    move-object/from16 v16, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_e

    :cond_16
    const/4 v4, 0x1

    if-eq v2, v4, :cond_18

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v16, v5

    const/4 v2, 0x0

    const/16 v33, 0x0

    const/16 v40, 0x0

    move v5, v4

    goto :goto_12

    :cond_18
    const/4 v3, 0x3

    :goto_c
    if-eq v2, v4, :cond_1b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1a

    if-eq v2, v3, :cond_19

    const/4 v2, 0x0

    goto :goto_d

    :cond_19
    const/4 v2, 0x2

    goto :goto_d

    :cond_1a
    const/4 v2, 0x4

    goto :goto_d

    :cond_1b
    move v2, v3

    .line 754
    :goto_d
    aget v4, v21, v10

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    move/from16 v33, v3

    move/from16 v40, v33

    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    const/4 v4, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v16, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x38f

    :goto_e
    if-ne v2, v4, :cond_1e

    const/4 v4, 0x7

    goto :goto_f

    :cond_1e
    move v4, v5

    .line 733
    :goto_f
    aget v2, v21, v10

    if-ne v2, v5, :cond_1f

    move/from16 v33, v3

    move v2, v4

    move v4, v5

    goto :goto_11

    :cond_1f
    move v2, v4

    move v4, v5

    :goto_10
    const/16 v33, 0x0

    :goto_11
    const/16 v40, 0x0

    .line 766
    :goto_12
    aget v3, v21, v10

    if-ne v3, v5, :cond_20

    move/from16 v17, v4

    move/from16 v45, v5

    const/4 v4, 0x2

    goto :goto_13

    :cond_20
    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    move/from16 v45, v4

    const/16 v17, 0x0

    goto :goto_13

    :cond_21
    const/16 v17, 0x0

    const/16 v45, 0x0

    :goto_13
    if-eqz v17, :cond_23

    .line 775
    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-nez v4, :cond_22

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    goto :goto_15

    :cond_23
    :goto_14
    move v4, v5

    :goto_15
    if-eqz v3, :cond_24

    const/4 v5, 0x7

    if-eq v3, v5, :cond_24

    const/16 v5, 0x8

    if-ne v3, v5, :cond_25

    :cond_24
    add-int/lit8 v9, v9, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    move/from16 v42, v2

    move/from16 v47, v4

    move-object/from16 v3, v20

    move/from16 v43, v33

    move-object/from16 v2, v39

    move-object v4, v2

    move/from16 v46, v40

    move/from16 v33, v1

    move/from16 v40, v6

    move/from16 v39, v37

    move/from16 v37, v9

    goto :goto_16

    :cond_26
    move/from16 v35, v2

    move-object/from16 v41, v4

    const-string v2, ""

    const-string/jumbo v3, "primary_device_dialog_id"

    move/from16 v33, v1

    move-object v4, v2

    move-object/from16 v16, v4

    move-object/from16 v36, v16

    move-object/from16 v38, v36

    move/from16 v37, v9

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object v2, v3

    move-object/from16 v3, v38

    .line 785
    :goto_16
    new-instance v6, Lcom/sec/ims/Dialog;

    move-object v1, v6

    const-string v9, ""

    const-string v5, ""

    move v0, v10

    move-object v10, v5

    const/16 v20, 0x0

    move-object/from16 v5, p2

    const/16 v44, 0x3

    move-object/from16 v48, v41

    const/16 v17, 0x1

    move-object/from16 v49, v5

    move-object/from16 v50, v34

    move-object/from16 v5, v19

    move-object/from16 p2, v6

    const/16 v34, 0x0

    move-object/from16 v6, v32

    move-object/from16 v51, v7

    move-object/from16 v7, v16

    move-object/from16 v52, v8

    move-object/from16 v8, v36

    move-object/from16 v32, v11

    move-object/from16 v11, v38

    move-object/from16 v36, v12

    move/from16 v12, v39

    move/from16 v53, v13

    move/from16 v13, v40

    move/from16 v14, v42

    move/from16 v15, v45

    move/from16 v16, p1

    move/from16 v17, v43

    move/from16 v18, v46

    move/from16 v19, v47

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v51

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    move-object/from16 v15, v52

    .line 789
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v33

    move/from16 v9, v37

    :goto_17
    add-int/lit8 v10, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p3

    move-object v8, v15

    move-object/from16 v11, v32

    move/from16 v2, v35

    move-object/from16 v12, v36

    move-object/from16 v4, v48

    move-object/from16 v3, v49

    move-object/from16 v5, v50

    move/from16 v13, v53

    const/4 v7, 0x1

    move/from16 v15, p1

    goto/16 :goto_6

    :cond_27
    move-object/from16 v49, v3

    move-object/from16 v48, v4

    move-object/from16 v50, v5

    move-object v15, v8

    move-object/from16 v32, v11

    move/from16 v53, v13

    :goto_18
    const/16 v34, 0x0

    .line 792
    aget v0, v32, v34

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    move/from16 v0, v53

    if-lt v0, v2, :cond_2b

    if-eqz v31, :cond_2b

    const-string/jumbo v5, "test_local_tag"

    const-string/jumbo v0, "test_remote_tag"

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v48

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 800
    aget v4, v22, v34

    const/4 v14, 0x1

    if-eq v4, v14, :cond_29

    if-eq v4, v2, :cond_29

    const/4 v2, 0x3

    if-ne v4, v2, :cond_28

    goto :goto_19

    :cond_28
    const/4 v2, 0x5

    move/from16 v16, v2

    move/from16 v18, v34

    goto :goto_1a

    :cond_29
    const/4 v2, 0x3

    :goto_19
    const/4 v4, 0x6

    move/from16 v18, v2

    move/from16 v16, v4

    :goto_1a
    const/16 v17, 0x3

    if-nez v30, :cond_2a

    add-int/lit8 v9, v9, 0x1

    :cond_2a
    move/from16 v21, v9

    add-int/lit8 v22, v1, 0x1

    .line 814
    new-instance v6, Lcom/sec/ims/Dialog;

    move-object v1, v6

    const-string v2, "999"

    const-string v4, "999"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Conference call"

    const-string v9, ""

    const-string v10, ""

    const-string v11, "Conference call"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 p2, v6

    move-object v6, v0

    move v0, v14

    move/from16 v14, v16

    move-object v0, v15

    move/from16 v15, v30

    move/from16 v16, p1

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 818
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 819
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v21

    move/from16 v1, v22

    goto :goto_1b

    :cond_2b
    move-object v0, v15

    .line 825
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v49

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/Dialog;

    sub-int v6, v1, v9

    const/4 v7, 0x1

    if-le v6, v7, :cond_2c

    .line 830
    invoke-virtual {v5, v7}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 832
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_2d
    const/4 v7, 0x1

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</dialog-info>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 838
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-object/from16 v3, p0

    move/from16 v5, p3

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_2e

    goto :goto_1d

    :cond_2e
    move/from16 v7, v34

    .line 842
    :goto_1d
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmcPdCallCnt: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", extCsCallCount: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endedCallCnt: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isDuplicatedPublishDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    aget v1, v32, v34

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2f

    return-void

    :cond_2f
    if-nez v7, :cond_30

    .line 848
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 849
    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v5, "displayName"

    const/16 v7, 0x1770

    move/from16 v3, v29

    move/from16 v8, v28

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 850
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x70000002

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_1e

    :cond_30
    return-void

    .line 581
    :cond_31
    :goto_1f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : Array parameters are empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPublishDialogInternal(II)V
    .locals 0

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 861
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V
    .locals 1

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V
    .locals 11

    .line 946
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPublishDialogInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    const-string p0, "Ignore sendPublishDialogInternal : PD is not registered"

    .line 954
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 958
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 960
    sget-object v5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-ne v5, v3, :cond_2

    .line 961
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 963
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 964
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    const-string v6, "*77"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasTwoPhonePrefix="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasNumberPlus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    const-string p0, "Ignore sendPublishDialogInternal in two phone mode"

    .line 967
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 974
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 977
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I

    move-result-object p1

    .line 978
    aget p2, p1, v2

    .line 979
    aget v2, p1, v4

    const/4 v5, 0x2

    .line 980
    aget p1, p1, v5

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/Dialog;

    sub-int v8, p2, p1

    if-le v8, v4, :cond_3

    .line 989
    invoke-virtual {v7, v4}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 991
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 992
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x70000003

    invoke-static {v8, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</dialog-info>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 996
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extPsCallCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", validCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", endedCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 999
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v4, "displayName"

    const/16 v6, 0x1770

    move v2, v0

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    :cond_5
    return-void
.end method

.method public setCallEstablishTimeExtra(J)V
    .locals 1

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setNeedToNotifyAfterP2pDiscovery(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 477
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    :cond_0
    return-void
.end method

.method startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1591
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "already start cmc handover timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1594
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x22

    .line 1596
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected startCmcPdCheckTimer(IJILjava/lang/String;Z)V
    .locals 3

    .line 1468
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1470
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCmcPdCheckTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "reg_id"

    .line 1472
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "uri"

    .line 1473
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "is_first_check"

    .line 1474
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1475
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p4

    const/16 p5, 0x21

    const/4 p6, -0x1

    .line 1476
    invoke-virtual {p0, p5, p1, p6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 1477
    iget-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p6, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0, p5, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p lineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 469
    new-instance p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    .line 471
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "start Nsd"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->start()V

    return-void
.end method

.method public startP2pDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pCallbackHandler:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$p2pCallbackHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I

    move-result p0

    .line 459
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscovery result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " hostlist "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1603
    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 1605
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop cmc handover timer handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1608
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1609
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method protected stopCmcPdCheckTimer(I)V
    .locals 3

    .line 1483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1486
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCmcPdCheckTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1489
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    .line 1490
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    .line 1202
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x7

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-gt p2, v2, :cond_3

    .line 1208
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    return-object v1

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1215
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAudioInterface for CMC SD call."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1216
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 5

    .line 486
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcP2pList currentRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 488
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 492
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "Do not set p2p list in case of CMC handover"

    .line 493
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 495
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 497
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setP2p(Ljava/util/List;)V

    .line 504
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_3
    return-void
.end method
