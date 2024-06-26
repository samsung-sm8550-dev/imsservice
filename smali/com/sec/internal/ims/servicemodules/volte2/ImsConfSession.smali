.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mGroupInvitingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExtendToConference:Z

.field private final mParticipantStatus:Landroid/util/SparseIntArray;

.field private final mParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAddParticipantId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupInvitingParticipants:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupParticipants:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipantStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipantStatus:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAddParticipantId(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingAddParticipantId(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetParticipantId(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->getParticipantId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionFromInvitingParticipants(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->getSessionFromInvitingParticipants(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyOnConferenceEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->notifyOnConferenceEstablished()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 0

    .line 1212
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    const-string p1, "ImsConfSession"

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupInvitingParticipants:Ljava/util/List;

    .line 58
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mGroupParticipants:Landroid/util/SparseArray;

    .line 60
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipantStatus:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    .line 62
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    return-void
.end method

.method private getParticipantId(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1492
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1493
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mParticipants:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getSessionFromInvitingParticipants(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 1501
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1502
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private notifyOnConferenceEstablished()V
    .locals 3

    .line 1468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1474
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1476
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mIsExtendToConference:Z

    if-eqz v0, :cond_0

    .line 1334
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x35

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    .line 1451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public handleRegistrationFailed()V
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1457
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1458
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xd3

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public holdVideo()V
    .locals 1

    .line 1342
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unsupported API - holdVideo()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 14

    move-object v12, p0

    move-object v0, p1

    .line 1217
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-object/from16 v0, p2

    .line 1218
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1220
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-nez v0, :cond_0

    .line 1221
    iget v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 1223
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    .line 1226
    :goto_0
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLooper:Landroid/os/Looper;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1228
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->init()V

    .line 1229
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallDedicatedBearer:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    .line 1231
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mDiagnosisController:Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;

    .line 1232
    new-instance v11, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;)V

    iput-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    .line 1234
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1235
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1236
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1237
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start ConfCallStateMachine state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 1239
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setIsNrSaMode()V

    return-void
.end method

.method public inviteGroupParticipant(Ljava/lang/String;)V
    .locals 1

    .line 1323
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x35

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public inviteParticipants(I)V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1293
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSupportUpgradeVideoConference()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1298
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Need to Upgrade to Conference Call for add Video Participants"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 1303
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    .line 1304
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v1, 0x2

    .line 1305
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1306
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Modify Request success pending add Participant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mPendingAddParticipantId:I

    return-void

    .line 1313
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x35

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public isQuantumEncryptionServiceAvailable()Z
    .locals 1

    .line 1358
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isQuantumEncryptionServiceAvailable: not support for conf call"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public merge(II)V
    .locals 2

    .line 1265
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x48

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method protected notifyOnErrorBeforeEndParticipant()V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mInvitingParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x450

    const-string v1, "Conf call setup fail"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 4

    .line 1364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallProfile.isConferenceCall() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 1366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1374
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void

    .line 1367
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->isConference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1368
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void

    .line 1371
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Change to callprofile type"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 1379
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1380
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not interest other sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1384
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    if-eq v0, v1, :cond_a

    if-eq v0, v2, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 1441
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    goto/16 :goto_2

    .line 1428
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x67

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 1434
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1435
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object p1

    .line 1434
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1430
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1432
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 1430
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 1421
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1422
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x66

    .line 1423
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object p1

    .line 1422
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1415
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1416
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x65

    .line 1417
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getUpdatedParticipantsList()Ljava/util/List;

    move-result-object p1

    .line 1416
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1404
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object p1

    .line 1405
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMessage CallStateMachine.ON_ENDED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_b

    .line 1407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 1409
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1410
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p1

    .line 1409
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1387
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_d

    .line 1395
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x5b

    .line 1397
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result p1

    .line 1396
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    .line 1398
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplaySurface for video conference call ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDisplaySurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDisplaySurface()Landroid/view/Surface;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->setDisplaySurface(ILandroid/view/Surface;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public removeGroupParticipant(Ljava/lang/String;)V
    .locals 1

    .line 1328
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public removeParticipants(I)V
    .locals 3

    .line 1318
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x36

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public resumeVideo()V
    .locals 1

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unsupported API - resumeVideo()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSessionId(I)V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    .line 1464
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    return-void
.end method

.method public setTtyMode(I)V
    .locals 0

    .line 1352
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Not supported operation"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1246
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1249
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\\$"

    .line 1250
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1251
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_0

    .line 1253
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 1283
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 1284
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 1277
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "start(): there is no participants"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot conference : participants is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1272
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startConference(): profile is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Cannot make conference call: profile is null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIncoming()V
    .locals 0

    .line 1260
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startIncoming()V

    return-void
.end method
