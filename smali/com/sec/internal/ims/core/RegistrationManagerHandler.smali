.class public Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.super Landroid/os/Handler;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-Handler"

.field private static final OMADM_TIMEOUT_MS:J = 0x7530L


# instance fields
.field protected mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field mDsacEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mHasPendingRecoveryAction:Z

.field protected final mImsDmConfigListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field protected mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneCount:I

.field protected mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field final mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

.field final mRilEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field final mUserEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field protected mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$02d7U2yI8XluGP_JqLnIwQDgLXk(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onThirdParyFeatureTagsUpdated$8(ILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0xfAvNO4gyutiomwmYLIr7F7s5g(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onThirdParyFeatureTagsUpdated$7(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5dmvQIEcFNrnCE_tv_4s9k7waXc(IILcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onPcoInfo$1(IILcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6_4RpMR2AnafUKnXT9SbN5UpOY4(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$registerInternalListeners$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Mn1WEWZ-cxt9WH8mqofc8nl-ag(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onBootCompleted$12(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bm2obX8Tq3nYTWw80BVqL4dfY2o(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onRcsDelayedDeregister$6(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DLPDlkaMHW5VeEripXZi94-WALo(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onRcsDelayedDeregister$5(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FBIsrLFYlki8nVW_yXruRN0hIio(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendReRegisterRequested$16(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ii-tXNQNxQe3zHKZAjhvHD58jM0(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onTelephonyCallStatusChanged$13(ILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8n1_x5bPuchS_HUJXiO-_cwd5U(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onPcoInfo$2(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hQdkPIxT9uk9TW8ze6gfUyqd_4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onSSACRegiRequested$9(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bYnR-V9qf2_vSw-j-QP042d2yPA(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onRcsDelayedDeregister$4(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c8lstOZRw_9GEQipkw6aP29kMA0(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRcsAllowedChangedByMdm(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dJTx1AxOb1YSRdLcH7eeavuohoo(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendDeRegisterRequested$15(ILcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fZmFeqvRU2Kd3rxt8dE09HCYs6c([BLcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onWfcSwitchProfile$3([BLcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDuscfb7tnqShXXTEMHSVPhRpcE(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasRcsChatService(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pNAquPpHIUMuupBYifjgG-boSIQ(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onSSACRegiRequested$11(ILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r3XTg95ezXEg1NUZDA7xvEVdvhM(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendDeRegisterRequested$14(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xHunLQqxefXKzRtfTi4hSRJJE38(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$onSSACRegiRequested$10(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 246
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 434
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 147
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 149
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 150
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "RegiMgr-Handler"

    const/16 p4, 0x12c

    invoke-direct {p1, p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 151
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/ims/core/NetworkEventController;",
            "Lcom/sec/internal/ims/core/UserEventController;",
            "Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2, p3, p9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V

    .line 159
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 160
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    .line 161
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    .line 162
    new-instance p2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/16 p3, 0x2710

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 163
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 164
    iput-object p8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 165
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 166
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-direct {p1, p2, p3, p4, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 167
    iput-object p10, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    .line 168
    iput-object p11, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method private allocateAdhocProfileId(I)I
    .locals 4

    .line 1547
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x4e1f

    if-le v1, v3, :cond_1

    .line 1550
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1552
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr p1, v2

    add-int/2addr p0, p1

    return p0
.end method

.method private hasRcsChatService(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 889
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object p0

    const-string p1, "chat"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$notifySendDeRegisterRequested$14(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 1622
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifySendDeRegisterRequested$15(ILcom/sec/internal/constants/Mno;I)V
    .locals 10

    .line 1599
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1601
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1602
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    .line 1603
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    const/16 v4, 0x7c

    const-string v5, "RegiMgr-Handler"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_b

    const/16 v3, 0xf

    if-eq v2, v3, :cond_b

    .line 1604
    invoke-static {p1, p2, v1, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->ignoreSendDeregister(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegisterTask;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 1608
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDeregister : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1611
    :cond_2
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiCause(I)V

    .line 1613
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_3

    const/16 v2, 0x31

    .line 1615
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v8, 0x1770

    invoke-virtual {p0, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1621
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda16;-><init>()V

    .line 1622
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_4

    .line 1623
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_4
    const/16 v3, 0x8f

    if-eq p3, v3, :cond_a

    const/16 v3, 0xc

    if-ne p3, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x327

    if-ne p3, v3, :cond_7

    .line 1628
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {v2, v1, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    .line 1629
    :cond_7
    sget-object v3, Lcom/sec/internal/constants/Mno;->UMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq p2, v3, :cond_8

    sget-object v3, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_9

    :cond_8
    if-ne p3, v4, :cond_9

    if-nez v2, :cond_9

    const-string v2, "Wifi disconnected, send local deregister"

    .line 1631
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    .line 1634
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v7, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    .line 1626
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v7, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x82

    if-ne p3, v3, :cond_c

    .line 1636
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v8, :cond_c

    const-string v3, "Stop pdn when device shut down..."

    .line 1637
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1639
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    :cond_c
    if-ne p3, v4, :cond_0

    .line 1641
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1642
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result v3

    .line 1643
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    const/16 v8, 0x14

    invoke-static {v4, v8}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v4

    .line 1644
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1645
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getNrInterworkingMode(I)I

    move-result v8

    sget v9, Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;->FULL_SUPPORT:I

    if-eq v8, v9, :cond_d

    goto :goto_2

    :cond_d
    move v6, v7

    :goto_2
    if-nez v3, :cond_e

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    :cond_e
    const-string v3, "TaskState is CONNECTED. Received Epdg Deregister Request."

    .line 1647
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1649
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    const-wide/16 v1, 0x1f4

    .line 1650
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto/16 :goto_0

    :cond_f
    const/16 p2, 0x2a

    .line 1656
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$notifySendReRegisterRequested$16(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 1662
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1663
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setUpdateRegistering(Z)V

    .line 1664
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1665
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v0

    .line 1666
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "sendReRegister : deregister task due to empty services"

    .line 1667
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1670
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$onBootCompleted$12(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 1165
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->BOOT_COMPLETED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 1168
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onPcoInfo$1(IILcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 849
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onUpdatedPcoInfo(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onPcoInfo$2(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const/16 v0, 0x16

    .line 852
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 854
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onRcsDelayedDeregister$4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onRcsDelayedDeregister$5(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 871
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onRcsDelayedDeregister$6(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const/4 v0, 0x4

    .line 873
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 874
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return-void
.end method

.method private static synthetic lambda$onSSACRegiRequested$10(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 938
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onSSACRegiRequested$11(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSSACRegiRequested: update registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "SSAC updated"

    .line 941
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 942
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SSAC_UPDATED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    return-void
.end method

.method private static synthetic lambda$onSSACRegiRequested$9(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 937
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    const-string v0, "mmtel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onTelephonyCallStatusChanged$13(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 1188
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTelephonyCallStatusChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onThirdParyFeatureTagsUpdated$7(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 2

    .line 922
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onThirdParyFeatureTagsUpdated$8(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThirdParyFeatureTagsUpdated: force update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "3rd party feature tag updated"

    .line 925
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->THIRDPARTY_FEATURETAG_UPDATED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    return-void
.end method

.method private static synthetic lambda$onWfcSwitchProfile$3([BLcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 863
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onWfcProfileChanged([B)V

    return-void
.end method

.method private synthetic lambda$registerInternalListeners$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5

    .line 412
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    const-string v1, "Register SIM Event"

    const-string v2, "RegiMgr-Handler"

    .line 414
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x14

    const/4 v3, 0x0

    .line 415
    invoke-interface {p1, p0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0x15

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, p0, v1, v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0x24

    .line 417
    invoke-interface {p1, p0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    invoke-interface {p1, p0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string p1, "Register PhoneStatelistener."

    .line 420
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    return-void
.end method

.method private onDmState(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "onDmState:"

    const-string v1, "RegiMgr-Handler"

    .line 1745
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "EAB_SETTING"

    .line 1747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v0, "omadm/./3GPP_IMS/EAB_SETTING"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "LVC_ENABLED"

    .line 1749
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1750
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v0, "omadm/./3GPP_IMS/LVC_ENABLED"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v0, "VOLTE_ENABLED"

    .line 1751
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v0, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    const-string p0, "Ignore DM value"

    .line 1754
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1757
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new onDmState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "- state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private onRcsAllowedChangedByMdm(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 893
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RCS allowed changed"

    .line 894
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->RCS_ALLOWED_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 898
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 900
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 902
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "skip RCS tryRegister due to non activeDataPhoneId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-Handler"

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 907
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecoveryAction; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RECOVERY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x11010007

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 v0, 0x0

    move v3, v0

    .line 1253
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 1254
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    .line 1256
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1257
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1258
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecoveryAction : active call in phoneId["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]. postpone recovery"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",POSTPONE RECOVERY: ACTIVE CALL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1263
    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1264
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRecoveryReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v2, "UACreateFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "NoUserAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :sswitch_2
    const-string v2, "UaStateMismatch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 1266
    :pswitch_0
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_CREATION_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_3

    .line 1272
    :pswitch_1
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_MISSING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_3

    .line 1269
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_MISMATCH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1275
    :goto_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearUserAgent()V

    .line 1276
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const/4 p1, 0x0

    .line 1277
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1278
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d9f89cd -> :sswitch_2
        -0x2c774ee7 -> :sswitch_1
        -0x24009efb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 748
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 749
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 750
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 758
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    :goto_0
    const/16 p1, 0x20

    .line 761
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x2

    .line 762
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected handleDynamicImsUpdated(I)V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x198

    .line 734
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 737
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsProfileUpdated(I)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-static {p1, p0, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationEvents;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected handleMnoMapUpdated(I)V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    .line 720
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RegiMgr-Handler"

    if-nez v1, :cond_1

    .line 721
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "imsservice reboot"

    .line 727
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "MnoMap Updated"

    const/4 p1, 0x1

    const v0, 0x11010007

    .line 728
    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 729
    invoke-static {v2}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, " Call exist.. Delay imsservice reboot."

    .line 722
    invoke-static {v3, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x94

    .line 723
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x14

    const-string v2, "RegiMgr-Handler"

    if-nez v0, :cond_0

    const-string v0, "phone process is not ready."

    .line 547
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->isReadyToStartRegistration(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onEventSimReady(I)Z

    move-result p2

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    if-nez p2, :cond_2

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p2, "SimReady: readiness false but CMC exists"

    .line 560
    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 563
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    return-void
.end method

.method protected handleUiccChanged(I)V
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifySimChange(I)V

    return-void
.end method

.method public hasDelayedStopPdnEvent()Z
    .locals 1

    const/16 v0, 0x85

    .line 1835
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public hasNetworModeChangeEvent()Z
    .locals 1

    const/16 v0, 0x31

    .line 1839
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public hasVolteSettingOffEvent()Z
    .locals 1

    const/16 v0, 0x83

    .line 1817
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method protected init()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerInternalListeners()V

    .line 173
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerIntentReceivers()V

    return-void
.end method

.method protected isReadyToStartRegistration(I)Z
    .locals 5

    const-string v0, "isReadyToStartRegistration:"

    const-string v1, "RegiMgr-Handler"

    .line 567
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 572
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    .line 573
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "Sim refresh is ongoing. SIM readyretry after"

    .line 574
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_1
    const/16 v4, 0x6b

    .line 576
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "Deregistering is not completed"

    .line 577
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 579
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    if-lez v4, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "IMEI is empty"

    .line 580
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 582
    :cond_3
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result p0

    const/4 v4, 0x5

    if-ne p0, v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OperatorCode is empty"

    .line 583
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 585
    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "IMSI is not valid"

    .line 586
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public notifyAirplaneModeChanged(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, -0x1

    .line 1388
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyChatbotAgreementChanged(I)V
    .locals 1

    const/16 v0, 0x38

    .line 1415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyConfigChanged(Landroid/net/Uri;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1368
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x23

    const/4 v1, 0x0

    .line 1367
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyContactActivated(II)V
    .locals 1

    const/16 v0, 0x329

    .line 1465
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDeRegistered(Landroid/os/Bundle;)V
    .locals 3

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    const/16 v1, 0x64

    .line 1444
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 1445
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyDmValueChanged(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "notifyDmValueChanged:"

    const-string v1, "RegiMgr-Handler"

    .line 1718
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1721
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1722
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDmState(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1724
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/IImsDmConfigListener;

    .line 1725
    invoke-interface {v4, p1, v2}, Lcom/sec/ims/IImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1732
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "omadm/./3GPP_IMS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1736
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "item"

    .line 1737
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "value"

    .line 1738
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "phoneId"

    .line 1739
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1740
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public notifyDnsResponse(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x39

    .line 1503
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyEcVbcSettingChanged(I)V
    .locals 2

    const/16 v0, 0x9c

    const/4 v1, -0x1

    .line 1410
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyEmergencyReady(I)V
    .locals 2

    const/16 v0, 0x77

    const/4 v1, -0x1

    .line 1429
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyImsSettingChanged(Landroid/net/Uri;I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1342
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1343
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    .line 1344
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1345
    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1346
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DYNAMIC_IMS_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SMK_CONFIG_URI:Landroid/net/Uri;

    .line 1347
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SMK_CONFIG_RESET_URI:Landroid/net/Uri;

    .line 1348
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/16 p1, 0x198

    .line 1349
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->forceCallOnServiceSwitched(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyImsSettingUpdated(I)V
    .locals 2

    .line 1313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLocalIpChanged(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4

    .line 1484
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1485
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLocalIpChanged: isStackedIpChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], RCS AS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1487
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "jibe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1488
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x5

    .line 1489
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1492
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public notifyLocationModeChanged()V
    .locals 1

    const/16 v0, 0x321

    .line 1383
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLteDataNetworkModeSettingChanged(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x32

    .line 1378
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyManualDeRegisterRequested(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1571
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(IIZ)V

    return-void
.end method

.method protected notifyManualDeRegisterRequested(IIZ)V
    .locals 3

    .line 1575
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterProfile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",DEREG REQ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x11010006

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1580
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 1581
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "explicitDeregi"

    .line 1582
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "phoneId"

    .line 1583
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xa

    .line 1585
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyManualDeRegisterRequested(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 1557
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1558
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1562
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 1563
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "explicitDeregi"

    .line 1564
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "phoneId"

    .line 1565
    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xa

    .line 1566
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyManualRegisterRequested(Lcom/sec/ims/settings/ImsProfile;ZI)I
    .locals 3

    .line 1517
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isProper()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1529
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "D;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\s]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1529
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->setAppId(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 1535
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 1536
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->allocateAdhocProfileId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    :cond_2
    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 1539
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1540
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/util/ImsUtil;->notifyImsProfileLoaded(Landroid/content/Context;I)V

    .line 1542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "registerProfile: id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr-Handler"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0
.end method

.method protected notifyManualRegisterRequested(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1508
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 1512
    invoke-virtual {p0, v1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyMnoMapUpdated(Landroid/net/Uri;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p1, 0x94

    .line 1360
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1361
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyMobileDataPressedSettingeChanged(II)V
    .locals 2

    const/16 v0, 0x99

    const/4 v1, 0x0

    .line 1398
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMobileDataSettingeChanged(II)V
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x0

    .line 1393
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x16

    .line 1474
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x17

    .line 1478
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRcsUserSettingChanged(II)V
    .locals 2

    const/4 v0, -0x1

    .line 1331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x93

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRefreshRegNotification(I)V
    .locals 2

    const/16 v0, 0x8d

    const/4 v1, -0x1

    .line 1460
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRegEventContactUriNotification(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x32a

    .line 1470
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRegistered(IILcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1436
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    const/16 p2, 0x64

    .line 1437
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyRegistrationError(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x68

    .line 1450
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRoamingDataSettigChanged(II)V
    .locals 2

    const/16 v0, 0x2c

    const/4 v1, 0x0

    .line 1336
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifySendDeRegisterRequested(Lcom/sec/internal/constants/Mno;II)V
    .locals 1

    .line 1598
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    .line 1661
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda17;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySetupWizardCompleted()V
    .locals 3

    const/4 v0, 0x0

    .line 1319
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 1320
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1321
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32b

    .line 1322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifySubscribeError(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x6c

    .line 1455
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x86

    .line 1420
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected notifyUpdateRegisterRequested(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x19

    .line 1593
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public notifyVolteSettingChanged(ZZI)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x7f

    goto :goto_0

    :cond_0
    const/16 p2, 0x7d

    :goto_0
    const/4 v0, -0x1

    .line 1405
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1404
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1403
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyVolteSettingOff(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x83

    .line 1424
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyVowifiSettingChanged(IJ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x7a

    .line 1373
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V
    .locals 1

    const/16 v0, 0x1e

    .line 1498
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onBlockRegistrationRoamingTimer(II)V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 914
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    const-string v1, "Orange Group, VoWIFI Error in Roaming"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 915
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    int-to-long p1, p2

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(J)V

    :cond_0
    return-void
.end method

.method onBootCompleted()V
    .locals 3

    const/4 v0, 0x0

    .line 1163
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1164
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->onConfigUpdated(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1225
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1227
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1229
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V
    .locals 2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelayedDeregisterInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 11

    .line 1060
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "onDeregisterTimeout:"

    const-string v2, "RegiMgr-Handler"

    .line 1062
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1063
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1065
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    const/16 v3, 0x86

    if-nez v1, :cond_4

    const-string v1, "onDeregisterTimeout: no object"

    .line 1067
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1069
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1070
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1072
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    const/4 v4, -0x1

    .line 1073
    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 1074
    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 1075
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1076
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 1077
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1078
    invoke-virtual {v4, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1079
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 1080
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 1081
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 1082
    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1086
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v5, ""

    const/16 v6, 0x29

    const/4 v7, 0x0

    if-eq v0, v4, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v4, 0x48

    if-ne v0, v4, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v8, Lcom/sec/ims/ImsRegistrationError;

    const/16 v9, 0x20

    invoke-direct {v8, v7, v5, v4, v9}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v2, v7, p1, v8}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v4, Lcom/sec/ims/ImsRegistrationError;

    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v8}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v9

    .line 1090
    invoke-virtual {v8}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x10

    invoke-direct {v4, v9, v8, v6, v10}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1089
    invoke-virtual {v0, v2, v7, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1092
    :goto_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NoUserAgent"

    .line 1093
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    :cond_3
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1097
    invoke-interface {p1, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    return-void

    :cond_4
    const-string v0, "InitialState"

    .line 1101
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UaStateMismatch"

    .line 1102
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    :cond_5
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->deregisterLocal()V

    return-void
.end method

.method protected onDeregistered(Ljava/lang/Object;)V
    .locals 10

    .line 616
    check-cast p1, Landroid/os/Bundle;

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v4

    const/16 v0, 0x86

    .line 619
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_0

    .line 620
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "onDeregistered : mHasPendingRecoveryAction"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    const/16 v0, 0x6b

    .line 627
    invoke-virtual {p0, v0, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-eqz v4, :cond_3

    .line 630
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 634
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string p0, "error"

    const-class v0, Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sec/ims/util/SipError;

    const-string/jumbo p0, "retryAfter"

    .line 635
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string p0, "isRequestedDeregi"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string p0, "pcscfGone"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 634
    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZZ)V

    :cond_3
    return-void
.end method

.method onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistrationRequest: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return-void
.end method

.method protected onDisableChatFeatureBySipForbidden(I)V
    .locals 4

    .line 835
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

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

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 836
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "im"

    .line 837
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "slm"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ft_http"

    .line 838
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ft"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "onDisableChatFeatureBySipForbidden: Trigger forced update registration"

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 947
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyReattachToRil()V

    .line 950
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_0

    .line 951
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const/4 v1, 0x2

    .line 952
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 953
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 954
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    :cond_0
    return-void
.end method

.method onDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 959
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByVolteDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 961
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    return-void
.end method

.method onDsacModeChanged()V
    .locals 4

    .line 1024
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1025
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "re-regi by dsac"

    .line 1026
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1027
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->DSAC_MODE_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    :cond_1
    return-void
.end method

.method protected onEventSimReady(I)Z
    .locals 4

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onEventSimReady:"

    .line 593
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimReady(ZI)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method onFlightModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x86

    .line 1218
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onFlightModeChanged(Z)V

    return-void
.end method

.method onGeoLocationUpdated()V
    .locals 8

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onGeoLocationUpdated:"

    .line 966
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 968
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 969
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 970
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDeregisterOnLocationUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 971
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v4, 0x322

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto :goto_1

    .line 975
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 977
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 983
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->GEOLOCATION_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    .line 984
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 988
    :cond_1
    iget v6, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    .line 991
    :cond_2
    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 992
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->GEOLOCATION_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    :cond_3
    const-string v5, "geolocation changed"

    .line 994
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 995
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    invoke-virtual {v5, v3, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto :goto_1

    .line 997
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationCacheExpired"

    .line 793
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x323

    .line 794
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    return-void
.end method

.method protected onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationTimerExpired"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x320

    .line 773
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyLocationTimeout()V

    return-void
.end method

.method protected onPcoInfo(III)V
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 848
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda1;-><init>(II)V

    .line 849
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 850
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onRCSAllowedChangedbyMDM()V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRCSAllowedChangedbyMDM:"

    .line 880
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 881
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 882
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 883
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 884
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRcsDelayedDeregister()V
    .locals 3

    const/4 v0, 0x0

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 868
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 869
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda5;-><init>()V

    .line 870
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda6;-><init>()V

    .line 871
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 872
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRegEventContactUriNotified(Ljava/lang/Object;)V
    .locals 4

    .line 1034
    check-cast p1, Landroid/os/Bundle;

    .line 1035
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v0, "handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "contact_uri_list"

    .line 1038
    const-class v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "isRegi"

    .line 1039
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "contactUriType"

    .line 1040
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "emergencyNumbers"

    .line 1041
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1043
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isRegi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 1049
    :cond_0
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/google/SecImsNotifier;->onP2pRegCompleteEvent(I)V

    :cond_1
    return-void
.end method

.method protected onRegisterError(Ljava/lang/Object;)V
    .locals 9

    .line 648
    check-cast p1, Landroid/os/Bundle;

    .line 649
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v4

    const-string v0, "RegiMgr-Handler"

    if-nez v4, :cond_0

    const-string p0, "onRegisterError: task is null!"

    .line 652
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 656
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const/16 v2, 0x86

    .line 657
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v3, :cond_1

    .line 659
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "onRegisterError : mHasPendingRecoveryAction"

    invoke-virtual {v2, v1, v4, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "onRegisterError. Remove RegisteringRecovery message"

    .line 661
    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    const/16 v2, 0x6b

    .line 666
    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 667
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "onRegisterError. Remove EVENT_DEREGISTER_TIMEOUT"

    .line 668
    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 669
    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const-string v0, ""

    .line 670
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v0, 0x29

    .line 671
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 674
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string p0, "handle"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p0, "error"

    const-class v0, Lcom/sec/ims/util/SipError;

    .line 675
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/sec/ims/util/SipError;

    const-string/jumbo p0, "retryAfter"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 674
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V

    return-void
.end method

.method protected onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    const/16 v0, 0x86

    .line 599
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "onRegistered : mHasPendingRecoveryAction"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x98

    .line 608
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x84

    .line 610
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method protected onRequestLocation()V
    .locals 6

    const-string v0, "onRequestLocation"

    const-string v1, "RegiMgr-Handler"

    .line 779
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x321

    .line 780
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 781
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 782
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 783
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 784
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "onRequestLocation: request location fetch"

    .line 785
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->requestLocation(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRequestNotifyVolteSettingsOff"

    .line 766
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x83

    .line 767
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyVoLteOnOffToRil(Z)V

    return-void
.end method

.method onSSACRegiRequested(IZ)V
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSSACRegiRequested : enabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 933
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    const/16 p2, 0x79

    .line 934
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 936
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda11;-><init>()V

    .line 937
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda12;-><init>()V

    .line 938
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 939
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 1004
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimSubscribeIdChanged, SimSlot: , subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1006
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1008
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    .line 1010
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 1015
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1016
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1017
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onSubscribeError(Ljava/lang/Object;)V
    .locals 3

    .line 640
    check-cast p1, Landroid/os/Bundle;

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onSubscribeError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V

    :cond_0
    return-void
.end method

.method onTelephonyCallStatusChanged(II)V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->setCallState(I)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTelephonyCallStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 1178
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v0, :cond_0

    .line 1179
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onTelephonyCallStatusChanged : do recovery after call end"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",DO RECOVERY: CALL END"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x11010007

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1182
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    const-string p2, "PostponedRecovery"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    const/16 p1, 0x86

    .line 1183
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1187
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    if-nez p2, :cond_4

    const/16 p2, 0x20

    .line 1191
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1195
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p2, "DSDS_DI"

    .line 1196
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1197
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1202
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v0, "mmtel"

    const/16 v1, 0x14

    .line 1203
    invoke-interface {p2, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1204
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1205
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 p2, 0x4

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V

    goto :goto_0

    .line 1207
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 p2, 0x3

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1211
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onThirdParyFeatureTagsUpdated(I)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onThirdParyFeatureTagsUpdated"

    .line 920
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 921
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda14;-><init>()V

    .line 922
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)V

    .line 923
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimsTimerExpired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    .line 802
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x84

    .line 804
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p0, v0, :cond_1

    .line 807
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTimsTimerExpired()V

    goto :goto_1

    :cond_1
    const-string p0, "Registered. Igonre onTimsTimerExpired."

    .line 809
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected onUpdateChatServiceByDmaChange(IZ)V
    .locals 4

    .line 814
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 815
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 816
    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateChatServiceByDmaChange: Ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 824
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onUpdateChatServiceByDmaChange: Postpone the update registration till next own cap. change by force ACS"

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->postponeUpdateRegistrationByDmaChange(I)V

    goto :goto_0

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "onUpdateChatServiceByDmaChange: Trigger forced update registration. By timeout"

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 4

    const-string v0, "onUpdateRegistration:"

    const-string v1, "RegiMgr-Handler"

    .line 685
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "onUpdateRegistration: registration task not found."

    .line 689
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 693
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V

    .line 695
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 696
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "onUpdateRegistration: imsprofile changed."

    .line 697
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 702
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p1, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "External IMPU list changed"

    .line 703
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 p1, 0x1c

    .line 704
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 705
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    const/4 p1, 0x2

    .line 706
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "onUpdateRegistration: For KDDI, LGT(ImsNotAvailable) Send the Refresh Reg even thoug there is no change in services."

    .line 713
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onWfcSwitchProfile([BI)V
    .locals 1

    const-string p0, "RegiMgr-Handler"

    const-string v0, "onWfcSwitchProfile:"

    .line 860
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 862
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda10;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1702
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1704
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected registerIntentReceivers()V
    .locals 7

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_wfc_switch_profile_broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.ims.hvolte.MODE_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.retryTimeExpired"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.retrySetupData"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMM_ERROR"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 402
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.ims.MOCK_IMS_EVENT"

    .line 403
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected registerInternalListeners()V
    .locals 3

    const/16 v0, 0x2c3

    const/4 v1, 0x0

    .line 409
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/16 v0, 0x2be

    .line 425
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->init()V

    return-void
.end method

.method public removeDmConfigTimeout(I)V
    .locals 3

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public removeRecoveryAction()V
    .locals 2

    const/16 v0, 0x86

    .line 1239
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 1241
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Do not remove RecoveryAction while pending"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 1245
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public removeVolteSettingOffEvent()V
    .locals 1

    const/16 v0, 0x83

    .line 1821
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected requestDelayedDeRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZJ)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x91

    .line 1677
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x8c

    .line 1797
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestPendingDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZJ)V
    .locals 1

    const/16 v0, 0x78

    .line 1801
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestTryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x76

    .line 1872
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCheckUnprocessedOmadmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x197

    .line 1809
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;J)V
    .locals 1

    const/16 v0, 0x196

    .line 1781
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendDmConfigTimeout(ILjava/lang/String;)V
    .locals 3

    .line 1825
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    .line 1826
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7530

    .line 1825
    invoke-virtual {v0, p2, p0, v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public sendFinishOmadmProvisioningUpdate(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x27

    .line 1785
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 1

    const/16 v0, 0x26

    .line 1855
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRequestDmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x1c

    .line 1805
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSuspend(Lcom/sec/internal/ims/core/RegisterTask;ZI)V
    .locals 1

    const/16 v0, 0x97

    .line 1868
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTryRegister(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1860
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTryRegister(IJ)V
    .locals 1

    const/4 v0, 0x2

    .line 1864
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V
    .locals 2

    const/16 v0, 0x19

    const/4 v1, -0x1

    .line 1777
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    return-void
.end method

.method protected setDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6

    .line 1282
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1283
    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6b

    if-ne v0, v1, :cond_0

    .line 1285
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1286
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p1

    int-to-long v1, p1

    .line 1285
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1287
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const-string v3, "RegiMgr-Handler"

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v4, :cond_2

    const-string p0, "KOR, OPTUS,KODO TELUS Emergency no need to Dereg Timer"

    .line 1288
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1290
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v1

    const/16 v4, 0x48

    if-ne v1, v4, :cond_3

    const-string p0, "block Registration Retries for the T3402 Timer on Epdg"

    .line 1291
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1292
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1293
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v1

    const/16 v4, 0x1b

    if-ne v1, v4, :cond_4

    const-string v0, "EPDG Deregister, set as default dereg timeout"

    .line 1294
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1296
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    const-string v0, "APM/PWR OFF case. We don\'t have much time! Wait 2.5 sec!"

    .line 1297
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1302
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_6

    .line 1303
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1305
    :cond_6
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1306
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p1

    int-to-long v1, p1

    .line 1305
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public startDisconnectPdnTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x194

    .line 1789
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public startDmConfigTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x1c

    .line 1793
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public startLocationRequestTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x320

    .line 1813
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;
    .locals 4

    .line 1765
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0
.end method

.method public startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x4

    .line 1843
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected startTimsEshtablishTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;
    .locals 1

    .line 1847
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    .line 1848
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x84

    .line 1850
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0
.end method

.method public stopTimer(Landroid/os/Message;)V
    .locals 0

    .line 1769
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopTimer(Lcom/sec/internal/helper/DelayedMessage;)V
    .locals 0

    .line 1773
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Lcom/sec/internal/helper/DelayedMessage;)V

    return-void
.end method

.method public unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1712
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1714
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateSipDelegateRegistration(IZ)V
    .locals 4

    const-wide/16 v0, 0x1388

    const/16 v2, 0x3a

    if-eqz p2, :cond_0

    .line 1682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1688
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "updateSipDelegateRegistration: Send delayed update"

    invoke-virtual {p2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1689
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method verifyX509Certificate([Ljava/security/cert/X509Certificate;)V
    .locals 14

    const-string/jumbo v0, "verifyX509Certificate()"

    const-string v1, "RegiMgr-Handler"

    .line 1109
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    .line 1112
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_4

    .line 1118
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/os/SystemUtil;->verifyCerts([Ljava/security/cert/X509Certificate;)Z

    move-result v3

    .line 1120
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    const-string/jumbo v8, "verifyId "

    if-ge v6, v5, :cond_5

    .line 1125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", maxSimCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1127
    invoke-static {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v10

    if-eqz v9, :cond_4

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_4

    const-string v9, "Verifying certificate names..."

    .line 1133
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1136
    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v11, v12}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1137
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v11

    .line 1138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Checking task: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 1143
    :cond_3
    aget-object v7, p1, v2

    invoke-static {v11, v7}, Lcom/sec/internal/helper/httpclient/OkHostnameVerifierWrapper;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    if-nez v7, :cond_6

    .line 1154
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->verifyCmcCertificate([Ljava/security/cert/X509Certificate;)Z

    move-result v7

    .line 1157
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", verified "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", nameMatch "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    if-eqz v3, :cond_7

    if-eqz v7, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    const-string/jumbo p0, "there is no certificate"

    .line 1113
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    return-void
.end method
