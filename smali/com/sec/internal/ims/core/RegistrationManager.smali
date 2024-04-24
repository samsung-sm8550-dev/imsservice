.class public abstract Lcom/sec/internal/ims/core/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    }
.end annotation


# static fields
.field protected static final ADHOC_ID_SIM2_OFFSET:I = 0x4e20

.field protected static final ADHOC_IMS_PROFILE_ID_BASE:I = 0x2710

.field protected static final HANDOFF_EVENT_TIMER:I = 0x12c

.field protected static final ID_SIM2_OFFSET:I = 0x1388

.field protected static final MAX_RECOVERY_ACTION_COUNT:I = 0x7


# instance fields
.field protected mAresLookupRequired:Z

.field protected mAuEmergencyProfile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallState:I

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field protected mEmmCause:I

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

.field protected mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mHasSilentE911:Landroid/os/Message;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsNonADSDeRegRequired:Z

.field protected mIsVolteAllowedWithDsac:Z

.field protected mMoveNextPcscf:Z

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneIdForSilentE911:I

.field protected mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field protected mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

.field protected mRegiRetryLimit:I

.field private mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field protected mlegacyPhoneCount:I


# direct methods
.method public static synthetic $r8$lambda$LajUndPiL9wWRhkDW0YsRMM-LZk(Lcom/sec/internal/ims/core/RegistrationManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$updatePani$4(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VLrytBsWyNPqvPRa7ixs9rBQd84(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$onUpdateSipDelegateRegistrationTimeOut$1(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j5CGuDiVlrVcJoiH2ut8GkhCCqw(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uZNBz58DM_oU5RY8JrhHWIZlv9U(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getPreferredImpuOnPdn$3(ILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z-RJt3pONke6IdhO9H1DP9fSxlE(Lcom/sec/internal/ims/core/RegistrationManager;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getInstanceId$2(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    .line 136
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    const/4 v2, -0x1

    .line 137
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    const/4 v2, 0x0

    .line 138
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    .line 140
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 145
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 147
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    .line 149
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mlegacyPhoneCount:I

    .line 151
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    .line 167
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    return-void
.end method

.method private getRegisteringEmergencyTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 3

    .line 2029
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 2033
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 2034
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_2
    return-object p1
.end method

.method private static synthetic lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2

    .line 677
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getInstanceId$2(I)Ljava/lang/String;
    .locals 3

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<urn:uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v1, "ims_user_data"

    const-string v2, "instanceId"

    invoke-static {p1, p0, v1, v2, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getPreferredImpuOnPdn$3(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 1446
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onUpdateSipDelegateRegistrationTimeOut$1(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 2

    .line 896
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updatePani$4(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 1

    .line 1676
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;I)V
    .locals 3

    .line 369
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsP2pRegistration(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v1, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance p1, Lcom/sec/ims/ImsRegistrationError;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    .line 377
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result p3

    invoke-direct {p1, v0, v1, p3, p4}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {p0, p2, p1}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 381
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 4

    const/4 v0, 0x1

    .line 1340
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPendingUpdate(Z)V

    .line 1341
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blockVoWifiRegisterOnRoaminByCsfbError(II)V
    .locals 2

    .line 1130
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x90

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected buildUserAgentString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    iget-object v3, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volte"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1453
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    if-eqz v3, :cond_a

    .line 1457
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    const/16 v10, 0x14

    .line 1458
    iget v9, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v9, :cond_2

    .line 1460
    iget-object v9, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v10, "sip_ua_vonr_service_type"

    invoke-interface {v9, v2, v10, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1461
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1462
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v9, "EPSFB"

    .line 1464
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v9, "VoLTE"

    .line 1467
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    :goto_1
    iget-object v9, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "rcs"

    invoke-static {v9, v10, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_5

    .line 1472
    sget-object v9, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_3

    const-string v9, "ft_http"

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "RCSUP"

    .line 1473
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    :cond_4
    const-string v9, "RCS"

    .line 1475
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v10, p1

    .line 1479
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v9

    .line 1481
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "ePDG"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1482
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_6
    iget-object v11, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v12, "mmtel-video"

    invoke-static {v11, v12, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v5, :cond_7

    const-string v11, "IR94"

    .line 1486
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    :cond_7
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "RTT"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_8

    .line 1490
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    if-ne v12, v8, :cond_9

    .line 1491
    :cond_8
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_9
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "ussd"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1495
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object/from16 v10, p1

    const-string v9, "TAS"

    .line 1498
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_b
    :goto_3
    sget-object v9, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_c

    const-string v9, "VVM"

    .line 1501
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1507
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "-"

    .line 1508
    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1510
    :cond_d
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    const-string v0, "[SUPPORT]"

    move-object/from16 v9, p2

    .line 1514
    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "[OS_VERSION]"

    .line 1515
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "ro.build.PDA"

    .line 1516
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1517
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getUiccMobilityVersion()Ljava/lang/String;

    move-result-object v12

    const-string v0, "[IMEISV]"

    .line 1518
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v15, "RegiMgr"

    if-eqz v13, :cond_f

    const-string v13, "iphonesubinfo"

    .line 1519
    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 1522
    :try_start_0
    iget-object v5, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1523
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v14, 0xe

    if-le v8, v14, :cond_f

    .line 1524
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "imsservice"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v13, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imeiSV = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1527
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inside sipUserAgent = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v4

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v9, v4

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    .line 1531
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    .line 1535
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1536
    iget-object v4, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_10

    .line 1537
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v14

    goto :goto_7

    :cond_10
    move-object v14, v5

    .line 1536
    :goto_7
    invoke-static {v4, v8, v9, v2, v14}, Lcom/sec/internal/ims/core/RegistrationUtils;->replaceEnablerPlaceholderWithEnablerVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v4

    const-string v5, "[BUILD_VERSION]"

    if-nez v4, :cond_11

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v6, v4, :cond_12

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x8

    if-le v4, v8, :cond_12

    .line 1539
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1540
    :cond_12
    sget-object v4, Lcom/sec/internal/constants/Mno;->PLUS_POLAND:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v8, "ril.sw_ver"

    const-string v9, "_"

    if-ne v6, v4, :cond_14

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x3

    if-le v4, v13, :cond_14

    .line 1542
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1543
    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "ril.official_cscver"

    .line 1544
    invoke-static {v11}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_13

    .line 1545
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v13, :cond_13

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v13, :cond_13

    .line 1546
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1547
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1548
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1550
    :cond_13
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1551
    :cond_14
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_15
    if-eqz v11, :cond_18

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x3

    if-le v4, v13, :cond_18

    .line 1553
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1554
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1555
    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 1556
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v13, :cond_16

    .line 1557
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v13

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1558
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1560
    :cond_16
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1563
    :cond_17
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    sub-int/2addr v4, v8

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_18
    if-eqz v11, :cond_19

    .line 1566
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    :cond_19
    :goto_8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, "unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "[PRODUCT_MODEL]"

    if-eqz v5, :cond_1a

    const-string/jumbo v4, "ro.product.base_model"

    .line 1569
    invoke-static {v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1570
    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_MHS_DONGLE"

    invoke-virtual {v5, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1572
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "NT930QCA"

    goto :goto_9

    :cond_1b
    const-string v4, "NP930QCA"

    :goto_9
    const-string/jumbo v5, "ril.PcModelName"

    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1571
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v4, :cond_1e

    const-string v4, "Android_Phone"

    const-string v5, "Laptop_PC"

    .line 1574
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1577
    :cond_1c
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1579
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v4

    .line 1578
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1581
    :cond_1d
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    :goto_a
    const-string v4, "[CLIENT_VERSION]"

    .line 1584
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1585
    iget-object v5, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v8, "rcs_client_version"

    const-string v9, "6.0"

    .line 1586
    invoke-interface {v5, v2, v8, v9}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    :cond_1f
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    const-string v5, "[OMCCODE]"

    if-eqz v4, :cond_20

    const-string v4, "SKT"

    .line 1590
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1591
    :cond_20
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "KT"

    .line 1592
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1593
    :cond_21
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "LGU"

    .line 1594
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1595
    :cond_22
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_b

    .line 1598
    :cond_23
    invoke-static {v2, v6}, Lcom/sec/internal/helper/OmcCode;->getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_24
    :goto_b
    const-string v4, "OMD"

    .line 1596
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1601
    :goto_c
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "[UICC_VERSION]"

    .line 1602
    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_25
    iget-object v4, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1606
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v5

    const-string v8, "[MNO_CUSTOM]"

    if-eqz v5, :cond_2a

    .line 1607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1609
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 1610
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v9

    const-string v10, "[PRODUCT_TYPE]"

    if-eqz v9, :cond_26

    const-string v9, "device-type/tablet"

    .line 1611
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_26
    const-string v9, "device-type/smart-phone"

    .line 1613
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    const-string v9, "mno-custom/"

    .line 1615
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_27

    .line 1616
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1617
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :cond_27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_28
    if-eqz v4, :cond_29

    .line 1621
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1622
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v9, "[MCCMNC]"

    .line 1624
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    :cond_2a
    :goto_e
    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v5, :cond_2e

    const-string v5, "VoNR"

    .line 1630
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "PRD-NG114/1"

    goto :goto_f

    :cond_2b
    const-string v5, "PRD-IR92/13"

    :goto_f
    const-string v6, "[IMS_PROFILE_VOICE]"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/google/SecImsNotifier;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v2

    .line 1633
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v2, "UP_2.3"

    :cond_2c
    const-string v5, "[RCS_PROFILE]"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2d

    const-string v5, "cc/"

    .line 1637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildUserAgentString: isVoLteEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sipUserAgent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public cancelUpdateSipDelegateRegistration(I)V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "cancelUpdateSipDelegateRegistration"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 890
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public dump()V
    .locals 7

    const-string v0, "Dump of RegistrationManager:"

    const-string v1, "RegiMgr"

    .line 1704
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCF mode: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegisterTask(s) -"

    .line 1707
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1708
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1709
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1710
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM slot: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] state: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] IMS Profile: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1710
    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Governor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1716
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1718
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->dump()V

    return-void
.end method

.method public forceNotifyToApp(I)V
    .locals 2

    .line 1989
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isRcsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RegiMgr"

    const-string v1, "forceNotifyToApp"

    .line 1990
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1991
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    .line 1992
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 1993
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.messaging"

    .line 1994
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1995
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1997
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method getAresLookupRequired()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    return p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1432
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1433
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 1434
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcLineSlotIndex()I
    .locals 0

    .line 1100
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result p0

    return p0
.end method

.method public getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 2

    .line 782
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    const-string p1, "RegiMgr"

    if-eqz p0, :cond_1

    .line 784
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 785
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "getRegistrationGovernor: return Emergency Gvn"

    .line 786
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "getRegistrationGovernor: not found Emergency task"

    .line 791
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 8

    const-string v0, "RegiMgr"

    const-string v1, "getEmergencyProfile:"

    .line 698
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 703
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 705
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v3

    .line 707
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: from SlotBasedConfig"

    .line 753
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 754
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v4

    .line 755
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: ProfileList is Empty"

    .line 756
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 760
    :cond_2
    monitor-enter v4

    .line 761
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 762
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "RegiMgr"

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyProfile: profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    monitor-exit v4

    return-object v0

    :cond_4
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: no profile found"

    .line 767
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception p0

    .line 769
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    const-string v4, "RegiMgr"

    const-string v5, "getEmergencyProfile(no SIM): profile in case of no SIM or AU sales code"

    .line 709
    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 711
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v4

    if-nez v4, :cond_8

    .line 712
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const-string v5, "mnoname"

    const-string v6, ""

    invoke-static {p1, v2, v4, v5, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 715
    sget-object v5, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_7

    .line 716
    :cond_6
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    :cond_7
    const-string v5, "RegiMgr"

    .line 718
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "getEmergencyProfile(no SIM): Previous mnoname [%s] => [%s]"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v4

    .line 720
    :cond_8
    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->handleExceptionalMnoName(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 722
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v5, :cond_9

    return-object v5

    :cond_9
    if-eqz v3, :cond_b

    .line 729
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 730
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 731
    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    :cond_a
    move-object v2, v0

    .line 733
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "RegiMgr"

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(networkPlmn or GCF): mno: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "RegiMgr"

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(no SIM): mno: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 740
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 741
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 742
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 743
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    const-string p0, "RegiMgr"

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmergencyProfile(no SIM or networkPlmn/GCF): profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_e
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile(no SIM): no profile found"

    .line 749
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method getEmmCause()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    return p0
.end method

.method protected getEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6

    .line 1036
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentity(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;
    .locals 2

    .line 205
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "RegiMgr"

    const-string v1, "getImsIconManager is not exist."

    .line 207
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;
    .locals 5

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsProfile: profile ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegiMgr"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$1;->$SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE:[I

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;-><init>()V

    .line 677
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 678
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 693
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsProfile: found ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] for ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .locals 0

    .line 1984
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .locals 0

    .line 1964
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgentHandle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 3

    .line 1375
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "RegiMgr"

    if-eq p2, v1, :cond_2

    const/16 v1, 0xf

    if-eq p2, v1, :cond_2

    .line 1377
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp24Profile(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_2

    .line 1378
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p2}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->getUuidInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 1379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId time based uuid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    .line 1382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId by phoneId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method getInstanceId(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 8

    const-string v0, "getInstanceId:"

    const-string v1, "RegiMgr"

    .line 1388
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const-string v2, ""

    if-nez v0, :cond_0

    return-object v2

    .line 1394
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 1396
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1406
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstanceId: deviceId len: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1409
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xe

    if-ge v0, v4, :cond_2

    const-string v0, "Invalid deviceId. Read imei again"

    .line 1410
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ">"

    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_4

    .line 1416
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    invoke-interface {p0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    .line 1417
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId: imei len="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dsv="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<urn:gsma:imei:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1420
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v4, :cond_5

    .line 1421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId: meid len="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<urn:device-id:meid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string p0, "getInstanceId: imei/meid seems be wrong!"

    .line 1424
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1398
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "ims_user_data"

    const-string v1, "instanceId"

    invoke-static {p1, p2, v0, v1, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;I)V

    .line 1399
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    :goto_1
    return-object v5
.end method

.method protected getInterfaceName(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1041
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p3

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "jibe"

    .line 1043
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1044
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p3, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 1046
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/core/PdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object p3

    .line 1050
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1051
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const-string/jumbo p3, "swlan0"

    goto :goto_2

    :cond_4
    :goto_1
    const-string p3, "p2p-wlan0-0"

    .line 1059
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1060
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz p3, :cond_6

    const-string/jumbo p0, "v4"

    .line 1061
    invoke-virtual {p3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1062
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "v4-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1063
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stacked IP interface"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RegiMgr"

    invoke-static {p3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_6
    return-object p3
.end method

.method public getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 0

    .line 1085
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    return-object p0
.end method

.method public getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 0

    .line 226
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object p0

    return-object p0
.end method

.method public getP2pListener()Lcom/sec/ims/IImsRegistrationListener;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    return-object p0
.end method

.method public getPendingRegistration(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "RegiMgr"

    const-string p1, "getPendingRegistration : no task return null"

    .line 459
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_0
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getPreferredImpuOnPdn(II)Ljava/lang/String;
    .locals 1

    .line 1444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreferredImpuOnPdn: phoneId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pdn="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1446
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1447
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPrivateUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/String;
    .locals 4

    .line 1026
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1027
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1028
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_1

    .line 1030
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getUserName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 1095
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method protected getPublicUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 7

    .line 913
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 914
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 917
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextImpuType()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "RegiMgr"

    if-ne v2, v3, :cond_0

    .line 918
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 919
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    const/16 v3, 0xb

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "profile.hasEmergencySupport() && profile.isUicclessEmergency()"

    .line 920
    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getEmergencyImpu()Ljava/lang/String;

    move-result-object v1

    .line 923
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 925
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result p1

    if-nez p1, :cond_2

    .line 926
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    goto :goto_2

    .line 931
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "profile.hasEmergencySupport() && !profile.isUicclessEmergency()"

    .line 932
    invoke-static {v4, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 944
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, ""

    .line 949
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p0, v2

    goto :goto_2

    .line 952
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 955
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    .line 958
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "impu : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method protected getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 3

    const-string v0, "getRegisterTask:"

    const-string v1, "RegiMgr"

    .line 814
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 815
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "getRegisterTask: Not exist matched RegisterTask. Return null.."

    .line 821
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 1

    .line 841
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 843
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 844
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p2

    .line 849
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRegisterTaskByProfileId: can not find profile id : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 4

    const/4 v0, 0x0

    .line 826
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 827
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 829
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 830
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegisterTaskByRegHandle: can not find handle : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 1

    .line 797
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-nez p0, :cond_0

    .line 799
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegistrationGovernor: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 0

    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    return-object p0
.end method

.method public getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 1072
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/16 v0, 0x4e20

    if-lt p1, v0, :cond_0

    .line 1074
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_2

    .line 1078
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 1080
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfo(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 7

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 469
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 470
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 477
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 481
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-array p0, v1, [Lcom/sec/ims/ImsRegistration;

    .line 485
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 1090
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 5

    .line 489
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 492
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 493
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 499
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 505
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    .line 507
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    .line 511
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "mmtel"

    .line 512
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 513
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 514
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v3, :cond_4

    .line 515
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_6
    new-instance p0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v1, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration;Ljava/util/Set;)V

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationList()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 1192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1193
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1194
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-object p0
.end method

.method public getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "IZI)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceForNetwork: network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1304
    invoke-static {p2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result p2

    .line 1306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1307
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v2

    .line 1308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 1312
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 1314
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v0

    .line 1317
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceForNetwork: service "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p4, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1320
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object v0

    .line 1324
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1326
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearFilteredReason()V

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    .line 1328
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p3

    const/16 v2, 0xb

    if-ne p3, v2, :cond_3

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1329
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 1330
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyCrossSimPolicy(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 1332
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p2

    .line 1333
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->filterserviceFbe(Landroid/content/Context;Ljava/util/Set;Lcom/sec/ims/settings/ImsProfile;)Ljava/util/Set;

    move-result-object v0

    .line 1334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getServiceForNetwork: filtered service "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 2

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTelephonyCallStatus(I)I
    .locals 7

    const-string v0, "getTelephonyCallStatus:"

    const-string v1, "RegiMgr"

    .line 1260
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1261
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1267
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTelephonyCallStatus: hasImsCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1269
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1270
    iget-object v5, v4, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    if-nez v2, :cond_2

    .line 1273
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 1274
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    .line 1275
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_2

    const-string p0, "getTelephonyCallStatus: Have No normal IMS/CS call => allow VoWifi registration."

    .line 1276
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 1280
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    return p0
.end method

.method getUnprocessedOmadmConfig(I)Z
    .locals 0

    .line 269
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getUnprocessedOmadmConfig()Z

    move-result p0

    return p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1944
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1979
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1949
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1959
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1969
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1954
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1974
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method protected getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 1

    const-string p0, "getUuid:"

    const-string v0, "RegiMgr"

    .line 1346
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1348
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result p0

    const-string p1, ""

    if-eqz p0, :cond_0

    .line 1349
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "-"

    .line 1350
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UUID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    return-object p1
.end method

.method getVolteAllowedWithDsac()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    return p0
.end method

.method public hasOmaDmFinished(I)Z
    .locals 0

    .line 230
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->hasOmaDmFinished()Z

    move-result p0

    return p0
.end method

.method public hasVoLteSim(I)Z
    .locals 2

    .line 1183
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1185
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 1184
    invoke-static {p1, v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVoLteSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 246
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCdmaAvailableForVoice(I)Z
    .locals 0

    .line 254
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isCdmaAvailableForVoice()Z

    move-result p0

    return p0
.end method

.method public isCmcRegistered(I)I
    .locals 2

    .line 1242
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1243
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1246
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 1247
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isEmergencyCallProhibited(I)Z
    .locals 2

    const-string p0, "RegiMgr"

    const-string v0, "isEmergencyCallProhibited:"

    .line 1200
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1202
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1204
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_0

    .line 1206
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1207
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isPse911Prohibited()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isEpdnRequestPending(I)Z
    .locals 1

    const-string p0, "RegiMgr"

    const-string v0, "isEpdnRequestPending:"

    .line 1219
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1221
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1223
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1224
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isInvite403DisabledService(I)Z
    .locals 0

    .line 242
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isInviteRejected()Z

    move-result p0

    return p0
.end method

.method public isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "RegiMgr"

    if-nez p1, :cond_0

    const-string p0, "isPdnConnected: profile not found."

    .line 1167
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1171
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "isPdnConnected: task not found."

    .line 1173
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1177
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p0

    .line 1178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPdnConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", PdnType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRcsRegistered(I)Z
    .locals 0

    .line 1236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isRcsRegistered(I[Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public isVoWiFiSupported(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v2, "mmtel"

    const/16 v3, 0x12

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v1, "mmtel-video"

    .line 1158
    invoke-interface {p0, v1, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1160
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method protected logTask()V
    .locals 7

    const/4 v0, 0x0

    .line 1652
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterTask(s): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    .line 1656
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Nothing!"

    .line 1657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1659
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1660
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ", rat = "

    .line 1662
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", service = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1664
    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1663
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "), "

    .line 1666
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1669
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3

    .line 639
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 642
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCmcRegistration(): CmcType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 645
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-eqz p1, :cond_1

    .line 650
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p2, p3}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 655
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p1, "notifyCmcRegistration, finish"

    .line 658
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_3
    return-void
.end method

.method protected declared-synchronized notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "RegiMgr"

    .line 393
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsRegistration(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;I)V

    .line 398
    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object p3

    invoke-interface {p3, p1, p2, p4}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 404
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 405
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 407
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-eqz p2, :cond_1

    .line 412
    :try_start_1
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, p1}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, p1, p4}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 417
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "RegiMgr"

    const-string v1, "notify mRegistrationList, finish"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 427
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 428
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/sec/internal/google/SecImsNotifier;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 431
    :cond_4
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p3

    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    invoke-interface {p3, p1, p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V

    .line 433
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 436
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "mmtel"

    .line 437
    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mmtel-video"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, p3

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    const-string v2, "RegiMgr"

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsRegistration: isVoWiFiRegistered ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move p3, v0

    :goto_2
    invoke-static {v2, p3}, Lcom/sec/ims/extensions/WiFiManagerExt;->setMaxDtimInSuspendMode(Landroid/content/Context;Z)V

    .line 443
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "REGISTERED"

    .line 444
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "SERVICE"

    .line 445
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "VOWIFI"

    .line 446
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "SIP_ERROR"

    .line 447
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "PHONE_ID"

    .line 448
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ERROR_REASON"

    .line 449
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyRCSAllowedChangedbyMDM()V
    .locals 1

    .line 1298
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRomaingSettingsChanged(II)V
    .locals 2

    .line 1293
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x2e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5

    .line 533
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result v0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimMobilityStatusChanged: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    .line 534
    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 543
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v1

    .line 547
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 548
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    .line 552
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x4

    .line 556
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "overwrite_mode"

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "SMMO"

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "DRPT"

    invoke-static {p1, v3, v4, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimMobilityStatusChanged: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",SIMMO:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p2, 0x11010008

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 564
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object p0

    .line 565
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 567
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/ISimMobilityStatusListener;

    invoke-interface {p2, v0}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 569
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const-string p1, "notify SimMobilityStatusChanged, finish"

    .line 572
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onDmConfigurationComplete(I)V
    .locals 2

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateSipDelegateRegistrationTimeOut(I)V
    .locals 2

    .line 895
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;-><init>()V

    .line 896
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "onUpdateSipDelegateRegistrationTimeOut: But now registering. Ignore."

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 900
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->onUpdateRegistrationTimeout()V

    return-void
.end method

.method public declared-synchronized registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string/jumbo v0, "registerCmcRegiListener: listener is null.."

    .line 604
    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 608
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 610
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 611
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 612
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 617
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 623
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 626
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 309
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string p2, "listener is null.."

    .line 315
    invoke-static {p1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 323
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :goto_0
    if-eqz p2, :cond_3

    .line 329
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p3, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    invoke-interface {p1, v0}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 335
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 339
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1

    monitor-enter p0

    .line 359
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    const-string p1, "RegiMgr"

    const-string/jumbo v0, "registerP2pListener done"

    .line 360
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 577
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string p2, "listener is null.."

    .line 582
    invoke-static {p1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 586
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 590
    :try_start_2
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseThrottleByAcs(I)V
    .locals 3

    .line 1107
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1110
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1117
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 1122
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1123
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo v0, "releaseThrottleByCmc: releaseThrottle"

    const-string v1, "RegiMgr"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1124
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    :cond_0
    return-void
.end method

.method public removeE911RegiTimer()V
    .locals 2

    .line 2009
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected reportDualImsStatus(I)V
    .locals 4

    .line 1926
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    rsub-int/lit8 v0, p1, 0x1

    .line 1928
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1933
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "overwrite_mode"

    .line 1934
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "DIMS"

    .line 1935
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1937
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1938
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportDualImsStatus: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6

    .line 1815
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1817
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    .line 1826
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 1827
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1828
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1829
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 1831
    :cond_0
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    const-string/jumbo v2, "send_mode"

    .line 1836
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "overwrite_mode"

    .line 1837
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "RCRS"

    .line 1838
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1839
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v2, "DRCS"

    invoke-static {v1, p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1840
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportRcsRegiStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1855
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "] - ignore!"

    const-string v5, "RegiMgr"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_1

    const/16 v1, 0xb

    if-eq v2, v1, :cond_0

    .line 1868
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportRegistrationCount: PDN type ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "G"

    .line 1858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1864
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_2

    const-string v1, "S"

    .line 1878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "F"

    .line 1880
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    .line 1892
    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v1, "N"

    .line 1894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v3, 0x3

    const/4 v7, 0x2

    if-ne v2, v3, :cond_6

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 1897
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    const-string v1, "C"

    .line 1898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v1, "W"

    .line 1900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "4"

    .line 1903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-eq v2, v7, :cond_8

    if-ne v2, v6, :cond_7

    goto :goto_2

    .line 1908
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reportRegistrationCount: rat ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v1, "L"

    .line 1906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    :goto_3
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants;->REGI_COUNT_KEYS:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1912
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "overwrite_mode"

    .line 1913
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1916
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportRegistrationCount: key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1917
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "DRPT"

    invoke-static {p1, p0, v0, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_9
    return-void
.end method

.method protected reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10

    .line 1725
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1726
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1739
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    .line 1740
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getLastRegiFailReason()I

    move-result v4

    .line 1741
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1743
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1745
    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    .line 1748
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    .line 1749
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 1752
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1753
    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 1755
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    if-ne v3, v8, :cond_2

    if-eq v3, v4, :cond_1

    .line 1758
    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK_AFTER_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    if-eq v4, v9, :cond_1

    .line 1759
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    :cond_1
    const-string v8, "mmtel"

    .line 1762
    invoke-virtual {v6, v8, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1763
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    goto :goto_1

    .line 1765
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    if-eq v8, v9, :cond_4

    .line 1766
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v8

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OFFSET_DEREGI_REASON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1770
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FALC"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1775
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    .line 1779
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-interface {p1, v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    :cond_4
    :goto_1
    const-string v8, "DRAT"

    .line 1782
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1783
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "SVCA"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "SVCR"

    .line 1785
    invoke-static {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPani()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPaniPrefix(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "PNPR"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPdnType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PDTY"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1789
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcscfOrdinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PCOD"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1791
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ROAM"

    .line 1790
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1792
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v5, :cond_7

    const/4 v6, 0x0

    .line 1793
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSignalLevel()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SIGS"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1797
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    .line 1801
    :cond_7
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "REQC"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "FRSN"

    .line 1802
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportRegiStatus: reason ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], prev ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1805
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-le v3, v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-eq v3, v2, :cond_8

    .line 1806
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "REGI"

    invoke-static {v0, v2, v4, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1809
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1811
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setLastRegiFailReason(I)V

    return-void
.end method

.method public requestFullNetworkRegistration(IILjava/lang/String;)V
    .locals 2

    .line 869
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {p3, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 p3, -0x1

    .line 872
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 871
    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 872
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestTryRegister(I)V
    .locals 1

    .line 859
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestTryRegsiter(IJ)V
    .locals 1

    .line 864
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestUpdateSipDelegateRegistration(I)V
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x8b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "requestUpdateSipDelegateRegistration: Ignore by postponed update registration event by dma change"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object v0

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/SipTransportImpl;->hasSipDelegate()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->updateSipDelegateRegistration(IZ)V

    return-void
.end method

.method resetNotifiedImsNotAvailable(I)V
    .locals 0

    .line 261
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    return-void
.end method

.method public sendDmState(IZ)V
    .locals 2

    .line 2002
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveSubInfoCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2003
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDmState(IZ)V

    :cond_0
    return-void
.end method

.method public sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method setAresLookupRequired(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    return-void
.end method

.method protected setCallState(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    return-void
.end method

.method setCdmaAvailableForVoice(IZ)V
    .locals 0

    .line 293
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCdmaAvailableForVoice(Z)V

    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 1

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    return-void
.end method

.method setEmmCause(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    return-void
.end method

.method public setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    return-void
.end method

.method public setInvite403DisableService(ZI)V
    .locals 0

    .line 285
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setInviteReject(Z)V

    return-void
.end method

.method public setNonADSDeRegRequired(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    return-void
.end method

.method setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 0

    .line 265
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    return-void
.end method

.method public setSSACPolicy(IZ)V
    .locals 1

    .line 1285
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    if-nez p2, :cond_0

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x79

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V

    .line 187
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setSimManagers(Ljava/util/List;)V

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    return-void
.end method

.method setUnprocessedOmadmConfig(IZ)V
    .locals 0

    .line 273
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setUnprocessedOmadmConfig(Z)V

    return-void
.end method

.method setVolteAllowedWithDsac(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    return-void
.end method

.method public testNotifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    return-void
.end method

.method public declared-synchronized unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 0

    monitor-enter p0

    .line 630
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 632
    monitor-exit p0

    return-void

    .line 635
    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string v0, "listener is null.."

    .line 344
    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 350
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    :try_start_2
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 0

    monitor-enter p0

    .line 598
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateChatService(II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8a

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x89

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eq p2, v1, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1145
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public updateEmergencyTaskByAuthFailure(I)V
    .locals 2

    .line 2016
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisteringEmergencyTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2018
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2019
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isERegiAuthFailed"

    const/4 v1, 0x1

    .line 2020
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2022
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2024
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_1
    return-void
.end method

.method protected updatePani(I)V
    .locals 1

    .line 1675
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;)V

    .line 1676
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected updatePani(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4

    .line 1680
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1682
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1686
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1689
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1691
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1692
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1696
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPani()Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getLastPani()Ljava/lang/String;

    move-result-object p1

    .line 1698
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1699
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, v1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->onPaniUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePcoInfo(III)V
    .locals 1

    .line 1151
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x2bf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 0

    .line 1648
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method protected validateImpi(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)Z
    .locals 6

    .line 963
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 964
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 967
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 971
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 974
    :cond_1
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x40

    .line 981
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_3

    .line 983
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 986
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 988
    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 991
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impiFromSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "impi : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 994
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "error : invalid IMPI"

    .line 995
    invoke-static {v2, v0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 996
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "registerInternal : error - invalid IMPI"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 997
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",REG FAIL:INVALID IMPI"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p2, 0x11020005

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string p0, ""

    .line 998
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    return v4

    :cond_5
    :goto_1
    return v3
.end method

.method protected validateImpu(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)Z
    .locals 4

    .line 1006
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1007
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1009
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "RegiMgr"

    const-string v1, "error : invalid IMPU"

    .line 1011
    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "registerInternal : error - invalid IMPU"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1013
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",REG FAIL:INVALD IMPU"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 p2, 0x11020000

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string p0, ""

    .line 1014
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
