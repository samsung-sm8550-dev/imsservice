.class public Lcom/sec/internal/ims/core/RegisterTask;
.super Ljava/lang/Object;
.source "RegisterTask.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegisterTask"


# instance fields
.field mContext:Landroid/content/Context;

.field mDeregiReason:I

.field private mDnsQueryRetryCount:I

.field private mFilteredReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

.field mHasForcedPendingUpdate:Z

.field private mHasPendingDeregister:Z

.field private mHasPendingEpdgHandover:Z

.field public mHasPendingRegister:Z

.field mHasPendingUpdate:Z

.field private mImmediatePendingUpdate:Z

.field private mIsRefreshReg:Z

.field public mIsUpdateRegistering:Z

.field private mKeepEmergencyTask:Z

.field mKeepPdn:Z

.field private mLastPani:Ljava/lang/String;

.field private mLastRegiFailReason:I

.field mMno:Lcom/sec/internal/constants/Mno;

.field protected mNetworkConnected:Landroid/net/Network;

.field mNotAvailableReason:I

.field mObject:Ljava/lang/Object;

.field private mPani:Ljava/lang/String;

.field private mPcscfHostname:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mPdnType:I

.field mPhoneId:I

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field mRcsProfile:Z

.field mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

.field mReason:Ljava/lang/String;

.field mRecoveryReason:Ljava/lang/String;

.field mReg:Lcom/sec/ims/ImsRegistration;

.field mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field private mRegiFailReason:I

.field private mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field private mRegistrationRat:I

.field mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

.field private mResult:Landroid/os/Message;

.field protected mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field mSuspendByIrat:Z

.field mSuspendBySnapshot:Z

.field mSuspended:Z

.field private misEpdgHandoverInProgress:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 46
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 49
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    const-string v2, ""

    .line 62
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    const/16 v2, 0x29

    .line 64
    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 65
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    const/4 v2, -0x1

    .line 66
    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 71
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 72
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 75
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/core/RcsRegistration;->getBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    .line 79
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 81
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 90
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 103
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 46
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 49
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    const-string v2, ""

    .line 62
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    const/16 v2, 0x29

    .line 64
    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 65
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    const/4 v2, -0x1

    .line 66
    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 71
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 72
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 75
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/core/RcsRegistration;->getBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    .line 79
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 81
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 90
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 108
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .locals 10

    move-object v8, p0

    move-object v0, p1

    move-object v9, p2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 45
    iput v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 46
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 47
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    const/4 v2, 0x0

    .line 48
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 49
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 50
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 51
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 52
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 53
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 54
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 55
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 56
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 58
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 59
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 60
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 61
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    const-string v3, ""

    .line 62
    iput-object v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 63
    iput-object v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    const/16 v3, 0x29

    .line 64
    iput v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 65
    iput v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    const/4 v3, -0x1

    .line 66
    iput v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 71
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 72
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 73
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 74
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 75
    iput v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/core/RcsRegistration;->getBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    move-result-object v3

    iput-object v3, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    .line 79
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 81
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 82
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 90
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 113
    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    move-object v2, p5

    .line 114
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 115
    iput-object v9, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    move-object v2, p4

    .line 116
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move/from16 v2, p8

    .line 117
    iput v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 118
    iput-boolean v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 120
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    :goto_0
    const-string v1, "mmtel-video"

    .line 126
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mmtel"

    .line 127
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "smsip"

    .line 128
    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 132
    :cond_1
    iget-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    move-object v2, p3

    move-object v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegiGovernorCreator;->getInstance(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 134
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    .line 135
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    if-eqz v9, :cond_2

    .line 138
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 141
    :cond_2
    iget-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegisterTask;->createAndLaunchDailyReRegisterTimer()V

    :cond_3
    return-void
.end method

.method private createAndLaunchDailyReRegisterTimer()V
    .locals 8

    const-string v0, "RegisterTask"

    const-string v1, "Creating and launching daily re-register timer."

    .line 794
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 796
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const/4 v2, 0x1

    const v3, 0x5265c00

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    .line 797
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegisterTask;->createDailyReRegisterTimerIntent()Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x3

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    .line 799
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private createDailyReRegisterTimerIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.ACTION_CHECK_REGISTRATION_DAILY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFilteredReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method buildRcsRegistration()Lcom/sec/internal/ims/core/RcsRegistration;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RcsRegistration$Builder;->build()Lcom/sec/internal/ims/core/RcsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public clearFilteredReason()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNotAvailableReason()V
    .locals 1

    const/4 v0, 0x0

    .line 715
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    return-void
.end method

.method public clearSuspended()V
    .locals 1

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    return-void
.end method

.method public clearSuspendedBySnapshot()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    return-void
.end method

.method public clearUpdateRegisteringFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 721
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 722
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 723
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 724
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    return-void
.end method

.method public clearUserAgent()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public getDeregiCause(Lcom/sec/ims/util/SipError;)I
    .locals 4

    .line 556
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transportErrorCode: reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterTask"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 560
    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    if-lt v1, v2, :cond_2

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    const/16 v2, 0x47

    if-lt v1, v2, :cond_3

    const/16 v2, 0x50

    if-gt v1, v2, :cond_3

    const/16 v0, 0x20

    .line 574
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getWFCSubscribeForbiddenCounter()I

    move-result v1

    if-lez v1, :cond_4

    const/16 p0, 0x969

    return p0

    .line 578
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v1, :cond_5

    .line 585
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 586
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0x57b

    return p0

    :cond_5
    return v0
.end method

.method public getDeregiReason()I
    .locals 0

    .line 513
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    return p0
.end method

.method public getDnsQueryRetryCount()I
    .locals 0

    .line 734
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    return p0
.end method

.method public getFilteredReason()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    return-object p0
.end method

.method public getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getLastPani()Ljava/lang/String;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastPani:Ljava/lang/String;

    return-object p0
.end method

.method public getLastRegiFailReason()I
    .locals 0

    .line 483
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    return p0
.end method

.method public getMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getNetworkConnected()Landroid/net/Network;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    return-object p0
.end method

.method public getNotAvailableReason()I
    .locals 0

    .line 710
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    return p0
.end method

.method public getPani()Ljava/lang/String;
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPani:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscfHostname()Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    return-object p0
.end method

.method public getPdnType()I
    .locals 0

    .line 396
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 386
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    return p0
.end method

.method public getProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public getRcsRegistrationBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsRegistrationBuilder:Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public getRecoveryReason()Ljava/lang/String;
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    return-object p0
.end method

.method public getRegiFailReason()I
    .locals 0

    .line 463
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    return p0
.end method

.method public getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object p0
.end method

.method public getRegistrationRat()I
    .locals 0

    .line 448
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    return p0
.end method

.method public getResultMessage()Landroid/os/Message;
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-object p0
.end method

.method public getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    return-object p0
.end method

.method public hasForcedPendingUpdate()Z
    .locals 0

    .line 638
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    return p0
.end method

.method public hasPendingDeregister()Z
    .locals 0

    .line 548
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    return p0
.end method

.method public hasPendingEpdgHandover()Z
    .locals 0

    .line 648
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    return p0
.end method

.method public hasPendingUpdate()Z
    .locals 0

    .line 628
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    return p0
.end method

.method public isEpdgHandoverInProgress()Z
    .locals 0

    .line 680
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    return p0
.end method

.method public isImmediatePendingUpdate()Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    return p0
.end method

.method public isKeepPdn()Z
    .locals 0

    .line 498
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    return p0
.end method

.method public isNeedOmadmConfig()Z
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedOmadmConfig()Z

    move-result p0

    return p0
.end method

.method public varargs isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z
    .locals 5

    .line 374
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 375
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public isRcsOnly()Z
    .locals 0

    .line 367
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    return p0
.end method

.method public isRefreshReg()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    return p0
.end method

.method public isSuspended()Z
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuspended: mSuspended("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") mSuspendByIrat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

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

.method public isUpdateRegistering()Z
    .locals 0

    .line 618
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    return p0
.end method

.method public keepEmergencyTask(Z)V
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    return-void
.end method

.method public needKeepEmergencyTask()Z
    .locals 0

    .line 690
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    return p0
.end method

.method public onConnected(ILandroid/net/Network;)V
    .locals 2

    .line 148
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    return-void

    .line 151
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: pdntype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " network="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mPdnType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " profile="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 155
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegisterTask"

    .line 152
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 3

    .line 161
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected: pdntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mPdnType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " profile="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 167
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RegisterTask"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    .line 172
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 174
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    :cond_1
    return-void
.end method

.method public onLocalIpChanged(ILandroid/net/Network;Z)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocalIpChanged: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isStackedIpChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 277
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    return-void

    .line 282
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 284
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, p0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyLocalIpChanged(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method public onNetworkRequestFail()V
    .locals 1

    .line 754
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-void
.end method

.method public onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcscfAddressChanged: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 239
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pcscf Preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 240
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    return-void

    .line 245
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 247
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 252
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onPcscfRestorationNotified(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcscfRestorationNotified: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 261
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pcscf Preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 262
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIpForPcscfRestoration(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->handlePcscfRestoration(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onResumed(I)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumed: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mIsUpdateRegistering="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mHasPendingRegister="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspended="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendByIrat="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendBySnapshot="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegisterTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    if-eqz p1, :cond_0

    .line 208
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->doPendingUpdateRegistration()V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, p0, v0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public onResumedBySnapshot(I)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumedBySnapshot: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mSuspended="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendByIrat="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendBySnapshot="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegisterTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public onSuspended(I)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuspended: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mIsUpdateRegistering="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspended="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendByIrat="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendBySnapshot="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegisterTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 190
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuspendedBySnapshot: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mSuspended="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendByIrat="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mSuspendBySnapshot="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegisterTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public resetTaskOnPdnDisconnected()V
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspended()V

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspendedBySnapshot()V

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 762
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcoType()V

    return-void
.end method

.method public resumeByIrat()V
    .locals 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeByIrat:mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public setDeregiCause(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x322

    if-eq p1, v0, :cond_5

    const/16 v0, 0x327

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 p1, 0x15

    .line 351
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x1a

    .line 333
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x17

    .line 330
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x34

    .line 327
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x1f

    .line 324
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x33

    .line 348
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x32

    .line 345
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_6
    const/16 p1, 0x9

    .line 342
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x1b

    .line 339
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_8
    const/16 p1, 0x19

    .line 336
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    :cond_9
    const/16 p1, 0x18

    .line 321
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    :goto_0
    return-void
.end method

.method public setDeregiReason(I)V
    .locals 0

    .line 508
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    return-void
.end method

.method public setDnsQueryRetryCount(I)V
    .locals 0

    .line 729
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    return-void
.end method

.method public setEpdgHandoverInProgress(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    return-void
.end method

.method public setHasForcedPendingUpdate(Z)V
    .locals 0

    .line 633
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    return-void
.end method

.method public setHasPendingDeregister(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    return-void
.end method

.method public setHasPendingEpdgHandover(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    return-void
.end method

.method public setImmediatePendingUpdate(Z)V
    .locals 0

    .line 653
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method public setIsRefreshReg(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    return-void
.end method

.method public setKeepPdn(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    return-void
.end method

.method public setLastRegiFailReason(I)V
    .locals 0

    .line 603
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    return-void
.end method

.method public setNotAvailableReason(I)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    return-void
.end method

.method public setPaniSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPani:Ljava/lang/String;

    .line 775
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastPani:Ljava/lang/String;

    return-void
.end method

.method public setPcscfHostname(Ljava/lang/String;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    return-void
.end method

.method public setPdnType(I)V
    .locals 0

    .line 391
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    return-void
.end method

.method public setPendingUpdate(Z)V
    .locals 0

    .line 623
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    return-void
.end method

.method public setProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setRecoveryReason(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    return-void
.end method

.method public setRegiFailReason(I)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    return-void
.end method

.method public setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-void
.end method

.method public setRegistrationRat(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    return-void
.end method

.method public setResultMessage(Landroid/os/Message;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-void
.end method

.method public setUpdateRegistering(Z)V
    .locals 0

    .line 613
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    return-void
.end method

.method public setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 664
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public stopDailyReRegisterTimer()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 805
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegisterTask;->createDailyReRegisterTimerIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 806
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public suspendByIrat()V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendByIrat:mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterTask["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistrationRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPcscfHostname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeregiReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
