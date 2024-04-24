.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"


# static fields
.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionManager"


# instance fields
.field private mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

.field private mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mUnmodifiableSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method public static synthetic $r8$lambda$0fdqJl2eZPlWhvv3gQ69kxV5FV8(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getEpsFbCallCount$4(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5jW9R57jOOfcS4yHtI2kysb8ZL8(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getDowngradedCallCount$2(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JrhQcRmlJGbeq76s8zevgX2lwcs(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getNrSaCallCount$5(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h_OXJehMBeqM_P3s4xIvDX-1Erk(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getEpdgCallCount$6(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kGkJzMjmf9Dz3MihTNHs_YHKmZw(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getVideoCallCount$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sYfPkmxDCwEQbdwGrT7vux3mWcY(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getE911CallCount$3(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uuf8Ohvw0kIN6yxJ2CUn6cs7mNM(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getDowngradedCallCount$1(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionMap(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V
    .locals 10

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 74
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 88
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 79
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-direct {v2, p1, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    .line 80
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 81
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 82
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 83
    invoke-interface {p3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 84
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getActiveCallSession(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 480
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 490
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 492
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveCallSession : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 2

    .line 1024
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EPS only registered for KT LTE Preferred model!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 1029
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_1

    .line 1030
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpsOnlyReg(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1031
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EPS only registered for LTE Preferred model!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isNormalTypeECallCsfbError(Lcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 1246
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 1247
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 1248
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

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

.method private isServerSipError(Lcom/sec/ims/util/SipError;)Z
    .locals 1

    .line 1239
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 1240
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1241
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 1242
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_0

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

.method private static synthetic lambda$getDowngradedCallCount$1(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getDowngradedCallCount$2(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 535
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getE911CallCount$3(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 541
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEpdgCallCount$6(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEpsFbCallCount$4(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 547
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEpsFallback()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getNrSaCallCount$5(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 553
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIsNrSaMode()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVideoCallCount$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 528
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 179
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 181
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 182
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_0

    .line 183
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "same CallSession has been found : Session id is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " And corresponding CallId is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public convertToSessionId(I)I
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 746
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->notifyConfError(Lcom/sec/ims/ImsRegistration;)V

    .line 747
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 750
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 752
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 753
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    .line 755
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by MMTEL deregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertDeregiReason(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 761
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endCallByDeregistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endcallBeforeRetry(II)V
    .locals 4

    .line 1486
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "endcallBeforeRetry"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1487
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1488
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    .line 1489
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyRetryingVoLteOrCsCall(I)V

    :try_start_0
    const-string v1, "TIMER VZW EXPIRED"

    .line 1492
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1c

    .line 1493
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    goto :goto_0

    :cond_1
    const-string v1, "RRC CONNECTION REJECT"

    .line 1494
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x17

    .line 1495
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    .line 1497
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1500
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 767
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->notifyConfError(Lcom/sec/ims/ImsRegistration;)V

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 769
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v3, 0x4

    if-ne v1, v2, :cond_1

    .line 775
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 780
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "endcallByNwHandover: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public forceNotifyCurrentCodec()V
    .locals 1

    .line 626
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 627
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveCallSessionId()I
    .locals 4

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 467
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 471
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallSession : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getActiveExtCallCount()I
    .locals 4

    .line 565
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    .line 567
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getAlertingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDowngradedCallCount(I)I
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 534
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda4;-><init>()V

    .line 535
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 536
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getE911CallCount(I)I
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda5;-><init>()V

    .line 541
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 542
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getEmergencySession()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 413
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEmergencySession(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 426
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEpdgCallCount(I)I
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda1;-><init>()V

    .line 559
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 560
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda6;-><init>()V

    .line 547
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 548
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getExtMoCall()Z
    .locals 2

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 576
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    const/4 v0, -0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 5

    .line 1219
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1223
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1224
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1225
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    if-nez p1, :cond_0

    .line 997
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :goto_0
    return-object p0
.end method

.method public getIncomingSessionPhoneIdForCmc()I
    .locals 3

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 515
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getMergeCallType(IZ)I
    .locals 3

    .line 1272
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1274
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    .line 1275
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRttCall()Z

    move-result v2

    .line 1276
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasVideoCall()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportMergeVideoConference()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1278
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 1280
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p2, :cond_4

    if-ne p0, v1, :cond_3

    const/4 p0, 0x5

    goto :goto_3

    :cond_3
    if-ne p0, v0, :cond_4

    const/4 p0, 0x6

    :cond_4
    :goto_3
    return p0
.end method

.method public getNrSaCallCount(I)I
    .locals 0

    .line 552
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda2;-><init>()V

    .line 553
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 554
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getParticipantIdForMerge(II)I
    .locals 2

    .line 1332
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    .line 1333
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1334
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No Hold Call : conference fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1338
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1339
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 1340
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    :cond_2
    return v0
.end method

.method public getPhoneIdByCallId(I)I
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V
    .locals 3

    .line 951
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 952
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getSipMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getIsRequest()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onReceiveSIPMSG(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 288
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 335
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 346
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 351
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 403
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    if-eqz p1, :cond_1

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 302
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 323
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 326
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessionByState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 311
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByTelecomCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 365
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionCount()I
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getSessionCount(I)I
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    .line 208
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 226
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getTelecomCallIdBySessionId(I)Ljava/lang/String;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getTelecomCallId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTotalCallCount(I)I
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getUnmodifiableSessionMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getVideoCallCount(I)I
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda0;-><init>()V

    .line 528
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 529
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public handleDeregistered(Landroid/content/Context;IILcom/sec/internal/constants/Mno;)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p4, v0, :cond_1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1f7

    if-ne p3, p1, :cond_1

    .line 1011
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationFailed()V

    const/4 p1, 0x0

    .line 1012
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_1
    return-void
.end method

.method public handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 715
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isE911Call()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 719
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 720
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 722
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    .line 724
    :cond_3
    :goto_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p3, v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v2, :cond_0

    .line 726
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reinvite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 728
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public handleEpdnSetupFail(I)V
    .locals 3

    .line 1302
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object p0

    .line 1304
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEpdnSetupFail Emergency Session Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1308
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1309
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1310
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1311
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEpdnSetupFail : skip terminate because this session uses ims pdn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    .line 1314
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1317
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;Lcom/sec/internal/constants/Mno;)V
    .locals 7

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v3, :cond_0

    .line 680
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 681
    sget-object v4, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p2, v4, :cond_1

    const/4 v4, 0x1

    .line 682
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const-string v4, "SRVCC HO STARTED"

    const/16 v5, 0x64

    .line 683
    invoke-virtual {v3, v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2

    .line 685
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const/16 v4, 0x8

    .line 686
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    if-nez v2, :cond_0

    .line 688
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    goto :goto_0

    .line 690
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p2, v4, :cond_0

    :cond_3
    const-string v4, "failure to transition to CS domain"

    .line 693
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne p3, v6, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSrvccStarted()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v4, "handover cancelled"

    .line 696
    :cond_5
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const/16 v5, 0x1e7

    .line 697
    invoke-virtual {v3, v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 701
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReinvite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    :cond_6
    sget-object p1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p2, p1, :cond_7

    if-eqz v2, :cond_7

    .line 706
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 708
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSrvccComplete()V

    :cond_7
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 2

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 254
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z
    .locals 2

    .line 1454
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1455
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 1456
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1457
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1458
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    .line 1459
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, p1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public hasEmergencyCall(I)Z
    .locals 2

    .line 902
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 903
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasEstablishedCall(I)Z
    .locals 2

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 270
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 278
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public hasOutgoingCall(I)Z
    .locals 2

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 889
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 893
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingCall(I)Z
    .locals 2

    .line 1477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1478
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPendingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasQecInCall()Z
    .locals 2

    .line 1507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1508
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasRingingCall()Z
    .locals 1

    const/4 v0, -0x1

    .line 610
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall(I)Z
    .locals 3

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 615
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_2

    .line 617
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreAlerting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is in IncomingCall"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public hasRttCall()Z
    .locals 1

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 597
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasSipCallId(Ljava/lang/String;)Z
    .locals 3

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 388
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 391
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exclude the dialog with sipCallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sessionId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasVideoCall()Z
    .locals 1

    .line 587
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 588
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCsfbErrorCode(Landroid/content/Context;ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z
    .locals 11

    .line 1039
    invoke-virtual {p3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1041
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SipError was null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isSilentRedialEnabled was false!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1050
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1051
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    :goto_0
    move-object v4, v2

    const/16 v2, 0xc

    const/4 v7, 0x1

    if-ne v3, v2, :cond_4

    .line 1053
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v5

    if-gt v5, v7, :cond_3

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    .line 1054
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already activated call exist when USSD call run!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1058
    :cond_4
    invoke-direct {p0, v1, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1059
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignore CSFB due to only EPS network!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1063
    :cond_5
    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " SipError : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, v5}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "Timer B expired convert to INVITE_TIMEOUT"

    .line 1066
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x45a

    .line 1067
    invoke-virtual {p4, v5}, Lcom/sec/ims/util/SipError;->setCode(I)V

    :cond_6
    const/4 v6, 0x0

    .line 1075
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v5

    const/16 v9, 0x12

    if-nez v5, :cond_7

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_8

    :cond_7
    if-eqz v1, :cond_8

    .line 1076
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v5

    if-ne v9, v5, :cond_8

    const-string v5, "isCsfbErrorCode ORANGE GROUP customization in VoWIFI"

    .line 1077
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isServerSipError(Lcom/sec/ims/util/SipError;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1079
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1081
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_8

    .line 1082
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    const p2, 0x1d4c0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->blockVoWifiRegisterOnRoaminByCsfbError(II)V

    return v0

    .line 1089
    :cond_8
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1090
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount(I)I

    move-result v5

    if-lez v5, :cond_9

    const-string p0, "China, DSDA, there\'s PS call at other slot, do not perform CSFB"

    .line 1091
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1095
    :cond_9
    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_a

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    if-nez v5, :cond_b

    const-string p0, "LGU/KDDI - Do not use CSFB in home network"

    .line 1096
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1098
    :cond_b
    sget-object v5, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_c

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    if-ne v5, v7, :cond_c

    const-string p0, "MTS Russia - Do not use CSFB in roaming"

    .line 1099
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1101
    :cond_c
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    const/16 v10, 0x45d

    if-ne v5, v10, :cond_d

    const-string p0, "CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING is always trigger CSFB"

    .line 1102
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1104
    :cond_d
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_f

    :cond_e
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->MEDIA_BEARER_OR_QOS_LOST:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, v5}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string p0, "CSFB condition for T-Mobile EUR"

    .line 1106
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1108
    :cond_f
    sget-object v5, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_10

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string p0, "VIVO doesn\'t support CSFB under roaming area"

    .line 1109
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1111
    :cond_10
    sget-object v5, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_12

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v5, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->isInternationalRoaming()Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v1, :cond_11

    .line 1112
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    if-ne v1, v9, :cond_12

    :cond_11
    const-string p0, "PLAY_PL doesn\'t support CSFB under international roaming area in VoWiFi"

    .line 1113
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1116
    :cond_12
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v1, :cond_14

    .line 1117
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v1

    if-le v1, v7, :cond_13

    .line 1118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "has another call "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1120
    :cond_13
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isClientError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "TMO - Stack return -1 trigger CSFB"

    .line 1121
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1124
    :cond_14
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v1, :cond_1c

    .line 1125
    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v1

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VZW - roaming("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") CDMAless("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") getLteEpsOnlyAttached("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1127
    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v1, :cond_17

    :cond_16
    return v0

    .line 1132
    :cond_17
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1133
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/16 v5, 0x9cf

    if-ne v2, v5, :cond_18

    return v7

    .line 1135
    :cond_18
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/16 v5, 0x9c6

    if-ne v2, v5, :cond_19

    goto :goto_1

    :cond_19
    if-eqz v1, :cond_1d

    .line 1137
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x641

    if-ne v0, v1, :cond_1d

    return v7

    .line 1136
    :cond_1a
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result p0

    if-nez p0, :cond_1b

    if-nez v1, :cond_1b

    move v0, v7

    :cond_1b
    return v0

    .line 1140
    :cond_1c
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v4, v0, :cond_1d

    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1d

    if-ne v3, v2, :cond_1d

    .line 1141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRegisteredOver3gppPsVoice(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1142
    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_1d

    return v7

    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    .line 1148
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z

    move-result p1

    .line 1150
    invoke-virtual {p3}, Lcom/sec/ims/volte2/data/CallProfile;->isECallConvertedToNormal()Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isNormalTypeECallCsfbError(Lcom/sec/ims/util/SipError;)Z

    move-result p3

    if-eqz p3, :cond_1e

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "Normal type ECall fails in roaming, CSFB retry"

    .line 1151
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1e
    move v7, p1

    :goto_2
    return v7
.end method

.method public isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z
    .locals 6

    .line 1160
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video_csfb_error_code_list"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "voice_csfb_error_code_list"

    .line 1165
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    const-string v2, "all_csfb_error_code_list"

    const/4 v3, 0x0

    .line 1166
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1168
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_csfb_error_code_list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " "

    if-nez p6, :cond_1

    .line 1173
    :try_start_1
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v4

    .line 1174
    invoke-virtual {v4, v0, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6

    .line 1181
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1182
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x14

    if-ne v0, v4, :cond_3

    :cond_2
    if-eqz p6, :cond_3

    .line 1183
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1184
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    if-eq v0, v4, :cond_3

    move p6, v3

    :cond_3
    if-nez p6, :cond_5

    .line 1188
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "e911_csfb_error_code_list"

    .line 1190
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    .line 1191
    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6

    .line 1195
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1196
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x17d

    if-eq p0, p1, :cond_4

    .line 1197
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x17e

    if-ne p0, p1, :cond_5

    .line 1198
    :cond_4
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xfe

    if-ne p0, p1, :cond_5

    const-string p0, "Unrecognized service urn."

    .line 1199
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_5
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x1e7

    if-ne p0, p1, :cond_6

    .line 1206
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Destination out of order"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "need CSFB for call forwarding"

    .line 1207
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p6, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1211
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCsfbErrorCode fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_6
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCsfbErrorCode Mno "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " callType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ==> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6
.end method

.method public isMatchWithErrorCodeList([Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    move v0, p0

    .line 1255
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 1256
    aget-object v0, p1, p0

    const-string/jumbo v1, "x"

    const-string v2, "[0-9]"

    .line 1257
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "match with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :cond_2
    :goto_1
    return p0
.end method

.method public isRttCall(I)Z
    .locals 3

    .line 1442
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p0

    .line 1447
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttCall, sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyConfError(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 736
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 737
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 738
    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 739
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->notifyOnErrorBeforeEndParticipant()V

    :cond_1
    return-void
.end method

.method public notifyDSDAVideoCapa(Z)V
    .locals 1

    .line 924
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 925
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyDSDAVideoCapa(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallEndByCS(I)V
    .locals 3

    .line 786
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCallEndByCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 788
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x4

    .line 791
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 793
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCallEndByCS: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallEnded(I)V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIsLteRetrying(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallEnded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1019
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_0
    return-void
.end method

.method public onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-nez p2, :cond_0

    .line 967
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onImsIncomingCallEvent: IncomingCallSession create failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 970
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 971
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 972
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 973
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 974
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    .line 977
    :cond_1
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 978
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    const/4 p5, 0x4

    if-ne p1, p5, :cond_4

    .line 979
    :cond_2
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 980
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 981
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 983
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 985
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPreAlerting()V

    .line 986
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 987
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_5

    .line 988
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    goto :goto_0

    .line 990
    :cond_5
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :goto_0
    return-object p2
.end method

.method public onPSBarred(Z)V
    .locals 3

    .line 930
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPSBarred: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const p1, 0x30000021

    .line 933
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->c(I)V

    .line 934
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 935
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 937
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    :cond_1
    const/16 v0, 0xd

    .line 941
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 943
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNetworkChanged: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    const/4 p1, 0x0

    .line 1003
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_0
    return-void
.end method

.method public onReleaseWfcBeforeHO(I)V
    .locals 4

    .line 847
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 849
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 850
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 854
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 856
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V

    .line 859
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Before HO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 863
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseWfcBeforeHO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 1

    .line 957
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 958
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onUpdateGeolocation()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUssdEndByCS(I)V
    .locals 3

    .line 800
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUssdEndByCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 802
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 803
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x4

    .line 805
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 807
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onUssdEndByCS: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseAllSession(I)V
    .locals 4

    .line 814
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    .line 822
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 824
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 827
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release all session in F/W layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public releaseAllVideoCall()V
    .locals 3

    .line 834
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 835
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 839
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 841
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 3

    .line 1348
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1349
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 1351
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1353
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 439
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 444
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeSessionByCmcType(I)V
    .locals 5

    .line 452
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSessionByCmcType cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 455
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 456
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 459
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSessionByCmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 633
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 634
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendText(Ljava/lang/String;I)V

    goto :goto_0

    .line 637
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRttMessage: receive null string / do nothing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)I
    .locals 6

    .line 1360
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyRequest:callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x30000017

    .line 1369
    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1371
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 1372
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1373
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    return v4

    .line 1375
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 1376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    return v4

    .line 1380
    :cond_2
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1381
    invoke-virtual {p1, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currCallType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-static {v2, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    if-eqz p2, :cond_3

    .line 1388
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    .line 1389
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1390
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    :cond_3
    :try_start_0
    const-string p0, ""

    .line 1395
    invoke-virtual {v1, p1, v4, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1397
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v4
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 6

    .line 1404
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accept : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1412
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x3000001a

    .line 1412
    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1414
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v2, 0x0

    .line 1415
    invoke-virtual {p1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1416
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    .line 1417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currCallType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1418
    invoke-static {v3, v0}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1421
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eqz p2, :cond_3

    .line 1423
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1424
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1425
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 1427
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 1431
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 1433
    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1436
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-void
.end method

.method public setTtyMode(II)V
    .locals 2

    .line 916
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 917
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 918
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public terminateMoWfcWhenWfcSettingOff(I)V
    .locals 4

    .line 869
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 870
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 877
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 879
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 881
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z
    .locals 3

    .line 642
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const-string v0, "TMO_E911 triggerPsRedial = false"

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 651
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 triggerPsRedial = false, origProfile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 655
    :cond_1
    invoke-virtual {v2, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 656
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-virtual {p3, v2, p4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p3

    if-nez p3, :cond_2

    return v1

    .line 661
    :cond_2
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceSessionEventListener(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 662
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p4, p1, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCallId(I)V

    .line 671
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifySessionChanged(I)V

    .line 672
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 triggerPsRedial = true"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 664
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 665
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 644
    :cond_3
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 Call session or IMS Registration is not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateQuantumPeerProfileStatus(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1518
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1520
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no session"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1523
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateQuantumPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateQuantumQMKeyStatus(IILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6

    .line 1528
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1530
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no session"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1533
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateQuantumQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method
