.class public Lcom/sec/internal/imsphone/ImsCallSessionEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "ImsCallSessionEventListener.java"


# static fields
.field private static final EVENT_CALL_RETRY:I = 0x64

.field public static final EVENT_NOTIFY_DSDA_VIDEO_CAPA:Ljava/lang/String; = "NotifyDSDAVideoCapa"

.field public static final EVENT_NOTIFY_QUANTUM_ENCRYPTION_STATUS:Ljava/lang/String; = "NotifyQuantumEncryptionStatus"

.field private static final EVENT_RETRY_AFTER_TIMEOUT:I = 0x65

.field public static final EVENT_VCID_FAILURE:Ljava/lang/String; = "VCIDGeneralFailure"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionEventListener"

.field private static USSD_MODE_NW_ERROR:I = -0x1

.field private static mEventCallRetryCounter:I

.field private static mEventCallRetryTotalTimer:I

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mForceUpdateCallProfileForDtmfEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

.field private mPrevErrorString:Ljava/lang/String;

.field private mPrevOnEndedError:I

.field private mPrevOnErrorVal:I

.field private mPrevRetryAfter:I

.field private mTelephonyReadyToHandleImsCallbacks:Z


# direct methods
.method public static synthetic $r8$lambda$ErWBvBbOXwKQ-_UQup-tEnng2z8(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YxpaVNduMZXvOtHMXQZhTALxVHc(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oySKpwUa4bTwYf3J8JAH0MSFn3U(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->lambda$notifyReadyToHandleImsCallbacks$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 48
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 49
    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 50
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    return-void
.end method

.method private isOnlyCallProfileChanged(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "VCIDGeneralFailure"

    .line 887
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NotifyQuantumEncryptionStatus"

    .line 888
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NotifyDSDAVideoCapa"

    .line 889
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$0()V
    .locals 1

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->updateCallProfileForDtmfEvent()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$1()V
    .locals 3

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onError()"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const-string v1, ""

    .line 93
    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 94
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyReadyToHandleImsCallbacks$2()V
    .locals 2

    :try_start_0
    const-string v0, "ImsCallSessionEventListener"

    const-string v1, "Telephoy gets ready. Invoke onEnded()"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onEnded(I)V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 314
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 315
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needSkipUntilTelephonyReady() mTelephonyReadyToHandleImsCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCallSessionEventListener"

    .line 316
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-nez p0, :cond_3

    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 321
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private notifyAlertInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const-string v3, "<urn:alert:service:call-waiting>"

    .line 914
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean v5, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsCWNotified:Z

    if-nez v5, :cond_0

    const/4 p0, 0x1

    .line 915
    iput-boolean p0, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsCWNotified:Z

    const/4 p0, 0x3

    .line 916
    invoke-virtual {v3, v4, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    .line 917
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    const-string v2, "<urn:alert:service:forward>"

    .line 918
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    .line 919
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    goto :goto_0

    :cond_1
    const-string v0, "<urn:alert:service:normal>"

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 v0, 0x9

    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onErrorBeforeNego(ILjava/lang/String;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 535
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-string v3, "ImsCallSessionEventListener"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/16 v2, 0x1f7

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "qcom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "TMO E911 SERVICE_UNAVAILABLE will be handled onEnded()"

    .line 536
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    if-eqz v1, :cond_6

    .line 540
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 541
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 542
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 543
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 546
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->needDeclineDuringQecCall()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 547
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p3, 0x1fb

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1388

    if-le p1, p2, :cond_3

    const/16 p2, 0x1770

    if-lt p1, p2, :cond_4

    :cond_3
    const/16 p2, 0x1792

    if-lt p1, p2, :cond_5

    const/16 p2, 0x17ef

    if-gt p1, p2, :cond_5

    .line 549
    :cond_4
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p3, 0x1fe

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_0

    .line 551
    :cond_5
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {p2, p3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 553
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v1, :cond_b

    .line 555
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 556
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    new-instance v7, Lcom/sec/ims/util/SipError;

    invoke-direct {v7, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v2, v6, v7, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 558
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    const/16 v1, 0x96e

    if-ne p1, v1, :cond_7

    .line 559
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0xbb9

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_1

    .line 562
    :cond_7
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x93

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 565
    :goto_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_a

    .line 566
    :cond_8
    sget v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    add-int/2addr v0, p3

    sput v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 567
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ImsCallSessionImpl"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 568
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 569
    new-instance v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$1;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    .line 585
    sget v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEventCallRetryCounter = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mEventCallRetryTotalTimer = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " retryAfter = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_9

    .line 587
    sget v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_9

    sget v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    const/16 v3, 0x2d

    if-ge v0, v3, :cond_9

    .line 588
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 589
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    .line 592
    :cond_9
    sput v4, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 593
    sput v4, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 594
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->quit()Z

    .line 595
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result p3

    invoke-direct {v1, p3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 597
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 598
    :cond_b
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 599
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 600
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :cond_c
    const/16 p3, 0x17e

    const/16 v2, 0x17d

    if-eqz v1, :cond_d

    .line 601
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eq p1, v2, :cond_d

    if-eq p1, p3, :cond_d

    .line 603
    new-instance p3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x92

    invoke-direct {p3, v0, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 605
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :cond_d
    const-string v1, "LTE Retry in UAC Barred"

    .line 606
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 607
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_e

    .line 608
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/16 p2, 0x12d

    invoke-interface {p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->removeCallStateMachineMessage(I)V

    .line 610
    :cond_e
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p0

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/google/SecImsNotifier;->onTriggerEpsFallback(II)V

    return v4

    .line 613
    :cond_f
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 614
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    if-eq p1, v2, :cond_10

    if-ne p1, p3, :cond_11

    .line 617
    :cond_10
    iput p1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 618
    invoke-static {p2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p1

    .line 619
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const/16 p3, 0xfe

    if-ne p1, p3, :cond_11

    .line 621
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1, p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setServiceUrn(Ljava/lang/String;)V

    .line 624
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 627
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p1, 0x8

    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 628
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return v4
.end method

.method private onErrorWhileNegoOrLater(ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 645
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/16 p2, 0x451

    const/4 v2, 0x1

    if-eq p1, p2, :cond_b

    const/16 p2, 0x452

    if-eq p1, p2, :cond_a

    const/16 p2, 0x457

    const/4 v2, 0x0

    if-eq p1, p2, :cond_9

    const/16 p2, 0x458

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_0

    .line 672
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 673
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 674
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-ne v5, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 678
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isECallConvertedToNormal()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge p2, v4, :cond_4

    .line 680
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x92

    invoke-direct {v1, p2, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_1

    .line 677
    :cond_3
    :goto_0
    iget-object p2, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-virtual {v3, p2, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 682
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    const/16 v3, 0x25b

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v4, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd2

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    .line 684
    iget-object p1, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 685
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 686
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v3, :cond_6

    .line 687
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 689
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 691
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p2, 0x8

    iput p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 692
    iget-boolean p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz p2, :cond_7

    .line 693
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsEcbmImpl()Lcom/sec/internal/imsphone/ImsEcbmImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 694
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput-boolean v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 696
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    goto :goto_3

    .line 660
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 663
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferred()V

    goto :goto_3

    .line 654
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 657
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V

    goto :goto_3

    .line 651
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 648
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_a
    :goto_3
    return v2

    .line 666
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x45e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCallProfileForDtmfEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 928
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 929
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v2, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImsCallSessionEventListener"

    const-string/jumbo v1, "updateCallProfileForDtmfEvent"

    .line 931
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImsCallSessionEventListener"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyReadyToHandleImsCallbacks() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mTelephonyReadyToHandleImsCallbacks = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnEndedError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevOnErrorVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevErrorString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPrevRetryAfter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mForceUpdateCallProfileForDtmfEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    if-eqz v1, :cond_1

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 87
    :cond_2
    iget v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 88
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 100
    :cond_3
    iget v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    if-le v1, v2, :cond_4

    .line 101
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCalling()V
    .locals 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 120
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 123
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 805
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 808
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string p2, "on-hold"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 814
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 817
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string p2, "connected"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onConferenceEstablished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 714
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const/4 v2, 0x0

    .line 188
    iput-boolean v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 189
    iget-boolean v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mTelephonyReadyToHandleImsCallbacks:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-string v0, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone mForceUpdateCallProfileForDtmfEvent"

    .line 192
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mForceUpdateCallProfileForDtmfEvent:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 197
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput v4, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 202
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result p1

    if-nez p1, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 204
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 205
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ne p1, v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 206
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 207
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iput v4, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 208
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_3
    return-void
.end method

.method public onEnded(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 330
    :try_start_0
    sput v1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 331
    sput v1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 332
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v2, :cond_0

    .line 333
    monitor-exit v0

    return-void

    .line 336
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onEnded()"

    .line 337
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnEndedError:I

    .line 339
    monitor-exit v0

    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v3

    .line 344
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v3, 0x1

    if-eq v5, v7, :cond_2

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    .line 346
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 347
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    const-string v4, "ImsCallSessionEventListener"

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEnded(), cmcType: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v8, v8, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v8}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sessionState: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v8, v8, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_10

    .line 353
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 355
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_4

    const/16 v4, 0xd2

    if-ne p1, v4, :cond_4

    .line 356
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v5, 0x5

    invoke-virtual {v4, v7, v5}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 359
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/16 v8, 0x92

    if-ge v5, v6, :cond_c

    if-eqz v3, :cond_5

    .line 360
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v7, v1

    :goto_0
    const-string v4, "ImsCallSessionEventListener"

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnded(), CallDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_6

    const-string v6, "cp is null"

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isSdPulling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 363
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    .line 365
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->needDeclineDuringQecCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 366
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x1fb

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_2

    .line 368
    :cond_7
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 370
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_8
    if-eqz v3, :cond_a

    .line 371
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 372
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    new-instance v7, Lcom/sec/ims/util/SipError;

    invoke-direct {v7, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v5, v4, v6, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 374
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_9

    const/16 v2, 0x96e

    if-ne p1, v2, :cond_9

    .line 375
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0xbb9

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    goto :goto_3

    .line 378
    :cond_9
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x93

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 381
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 382
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 383
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 385
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 387
    :cond_b
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 388
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 389
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 392
    :cond_c
    iget-object v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    const/4 v5, 0x4

    if-lez v4, :cond_d

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v6, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ne v6, v5, :cond_d

    .line 394
    iget-object v2, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v4, v2, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    .line 395
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    :cond_d
    if-eqz v3, :cond_e

    .line 396
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v4, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge v4, v5, :cond_e

    .line 398
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v8, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 399
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    .line 400
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_f

    const/16 v2, 0x1f7

    if-ne p1, v2, :cond_f

    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    .line 401
    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 402
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const-string v3, "100 Trying Timeout"

    invoke-direct {v2, v8, p1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 406
    :cond_f
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 407
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 410
    :cond_10
    iget-object v2, v4, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 411
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 413
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v4, p1, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 414
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 418
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isMultiparty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 419
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 422
    :cond_12
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean v3, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v3, :cond_13

    .line 423
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsEcbmImpl()Lcom/sec/internal/imsphone/ImsEcbmImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 426
    :cond_13
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 v3, 0x8

    iput v3, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 427
    iput-boolean v1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 428
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    .line 429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_14

    .line 431
    invoke-virtual {p0, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    :cond_14
    return-void

    :catchall_0
    move-exception p0

    .line 429
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEpdgStateChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 860
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    .line 450
    monitor-exit v0

    return-void

    .line 452
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->needSkipUntilTelephonyReady(Lcom/sec/ims/volte2/IImsCallSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImsCallSessionEventListener"

    const-string v2, "Telephony not ready to handle ims callbacks. Postpone onError()"

    .line 453
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevOnErrorVal:I

    .line 455
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevErrorString:Ljava/lang/String;

    .line 456
    iput p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mPrevRetryAfter:I

    .line 457
    monitor-exit v0

    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 460
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    const/16 v3, 0x25b

    const/4 v4, 0x2

    if-lez v2, :cond_5

    const-string v5, "ImsCallSessionEventListener"

    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError(), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v7, v7, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-gt v5, v4, :cond_4

    .line 466
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 467
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 468
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->isExistP2pConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-ne p1, v3, :cond_3

    .line 472
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput v4, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    goto :goto_0

    :cond_3
    const-string p1, "ImsCallSessionEventListener"

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError(), ignore error of cmcCall. just return: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-exit v0

    return-void

    .line 483
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 484
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_5

    .line 485
    invoke-virtual {v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 488
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_6

    if-ne p1, v3, :cond_6

    const-string v2, "Outgoing Call Barred"

    .line 490
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 493
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    if-ge v2, v4, :cond_7

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onErrorBeforeNego(ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 495
    monitor-exit v0

    return-void

    .line 497
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->onErrorWhileNegoOrLater(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 498
    monitor-exit v0

    return-void

    .line 500
    :cond_8
    iget-object p3, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 501
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p3, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p3

    const/4 v2, 0x0

    .line 502
    iput-boolean v2, p3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 503
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 504
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 505
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 506
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 507
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isInitialMerge()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x451

    if-ne p1, p2, :cond_9

    .line 508
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 512
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 513
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 515
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onEstablished(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x4

    .line 216
    iput v2, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 217
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isWifiCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 223
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_3

    .line 224
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v1, v2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_3

    .line 233
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_3
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v1, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 245
    iget v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 246
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 247
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 250
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 253
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return-void
.end method

.method public onForwarded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 300
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 301
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    return-void
.end method

.method public onHeld(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 273
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateHoldToneType(Z)V

    .line 274
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsGeneralEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->isOnlyCallProfileChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 879
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 881
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 748
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v1

    .line 750
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 752
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    .line 756
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "connected"

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 758
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v9

    move v4, p1

    .line 757
    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 761
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_1

    .line 762
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 763
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 764
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 765
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_0

    .line 768
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 769
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 770
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 773
    iput-boolean p1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    .line 776
    :cond_3
    iget-boolean p1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 777
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 778
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    check-cast p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 779
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v2, :cond_4

    .line 780
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1

    .line 782
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 786
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isInitialMerge()Z

    move-result p1

    if-nez p1, :cond_6

    .line 787
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 789
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_6

    .line 790
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_6
    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const-string v1, "disconnected"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 799
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->removeConferenceState(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->clearConferenceStateList()V

    const/4 p1, 0x0

    move v0, p1

    .line 721
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 722
    aget-object v1, p2, v0

    const-string v2, "*23#"

    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 724
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "[^0-9]"

    const-string v3, ""

    .line 726
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "010"

    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 728
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 730
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 731
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 734
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v3, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v5

    aget-object v6, p2, v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 735
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aget v1, p3, v0

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->participantStatus(I)Ljava/lang/String;

    move-result-object v8

    aget v9, p4, v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 736
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    .line 734
    invoke-virtual/range {v3 .. v10}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 739
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 740
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 706
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 287
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz p1, :cond_0

    .line 290
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRetryingVoLteOrCsCall(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 898
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x457

    const-string v1, "PS Retry Required"

    const/16 v2, 0x93

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 902
    :cond_0
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x458

    const-string v1, "CS Retry Required"

    const/16 v2, 0x92

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 906
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/16 p1, 0x8

    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 907
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->releaseSessionListeners()V

    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 151
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 157
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    return-void
.end method

.method public onSessionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 869
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    :cond_0
    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 165
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->notifyAlertInfo()V

    .line 167
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 172
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 178
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateRingbackToneDirection(I)V

    .line 179
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 180
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_3
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    :cond_0
    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 134
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_2
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 838
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "error-code"

    .line 840
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 841
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    if-eqz p1, :cond_1

    const-string p0, "ImsCallSessionEventListener"

    const-string p1, "Ignoring USSD error because session was terminated by user"

    .line 842
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 845
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    sget p1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->USSD_MODE_NW_ERROR:I

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    .line 847
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
