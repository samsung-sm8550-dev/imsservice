.class public Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.super Lcom/sec/internal/ims/core/RegistrationGovernor;
.source "RegistrationGovernorBase.java"


# static fields
.field protected static final DEFAULT_TIMS_ESTABLISH_TIMER_MS:J = 0x1d4c0L

.field protected static final DELAY_RESTORE_SETTING_TIMER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnBase"


# instance fields
.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field protected mDelayedVolteOffFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mIsVoLteMenuRemoved:Z

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

.field protected mSamsungMsgPackage:Ljava/lang/String;

.field protected mTask:Lcom/sec/internal/ims/core/RegisterTask;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public static synthetic $r8$lambda$-IZXRL995JZXfV8d3QjSUrfbUA4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasImsConnectingTask$11(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$32jD6f6ks2eqbmHEzCPL0tvCdbg(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$filterService$1(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7ERkW1CF9i1gUY_F00cZ__Ks-2k(Ljava/util/concurrent/ScheduledFuture;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$checkUnProcessedVoLTEState$17(Ljava/util/concurrent/ScheduledFuture;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$82ZJOtNPPu3o1GV6kdI4KgKui-s(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasImsConnectingTask$13(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F6q2ImXo19dJcv9Y5b3q01QrJjI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$getMatchedPdnFailReasonFromGlobalSettings$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JpL5IihAWO58zVqKkSsdM_b0dcM(Lcom/sec/internal/ims/core/RegistrationGovernorBase;ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasImsConnectingTask$15(ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M6wdyaGi7fXrub2on8iwR_I5-qI(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasImsConnectingTask$12(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N-mAAA42Wxzqu02WVnm7sMV86JI(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$onPackageDataCleared$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nam_lQ5PMQ0t0zgFUHqS6agg_tU(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$checkUnProcessedVoLTEState$18(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rg8BTvSexPhYvVDZqfhkhHiEVbQ(Lcom/sec/internal/constants/ims/core/PdnFailReason;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$getMatchedPdnFailReasonFromGlobalSettings$5(Lcom/sec/internal/constants/ims/core/PdnFailReason;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TyNrwOeGZxlgU-Q2heOJsiyRkds(Lcom/sec/internal/ims/core/RegistrationGovernorBase;ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$isRegistering$10(ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VpOsEnYir4ZIDoNjPEF8e8_qDtI(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasImsConnectingTask$14(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zq_XG8ZwxBlVEO0bXaJt2R50KZI(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$isRegistering$9(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_x26TprGgMw2iEseWH2F4i_YZ9A(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$isRegistering$8(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hWwom2Hif80_NiNZJwrjFsAVCPo(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasEmergencyTaskInPriority$16(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nhCgGgTq71bmmij1wosf6PTJe_Q(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$filterService$2(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWPhn_u9U7jFJqa-NdeMBIytzWE(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$isW2lInProgress$7(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$px06xVjqfVRJd5jYCzyOZDJykDY(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$getMatchedPdnFailReasonFromGlobalSettings$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xS1r3iUGdW3DqdDWPjz3cNjoer4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$isW2lInProgress$6(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 120
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v0, ""

    .line 129
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mSamsungMsgPackage:Ljava/lang/String;

    .line 1322
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 139
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 140
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 141
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p4

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 142
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    .line 143
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    .line 144
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result p4

    int-to-long v0, p4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    .line 145
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result p4

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    .line 146
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 147
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 148
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 150
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 154
    :cond_0
    invoke-static {p7}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mSamsungMsgPackage:Ljava/lang/String;

    .line 156
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "package"

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 159
    new-instance p2, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Lcom/sec/ims/settings/ImsProfile;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/os/DeviceUtil;->removeVolteMenuWithSimMobility(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mIsVoLteMenuRemoved:Z

    .line 171
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addIpv4Addr(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 651
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 652
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addIpv6Addr(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 634
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 635
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkOwnStateIfNeeded()Z
    .locals 3

    .line 1430
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isIndia()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isVietnam()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1432
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "isReadyToDualRegister : Own slot is REGISTERING or CONNECTED and other slot is REGISTERING"

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1433
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private hasImsConnectingTask(I)Z
    .locals 2

    .line 1449
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda15;-><init>()V

    .line 1450
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;I)V

    .line 1455
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1458
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isImsPdnConnecting(I)Z
    .locals 1

    .line 1439
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isInServiceOnCellular(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->hasImsConnectingTask(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInCall(I)Z
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v0

    .line 1413
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToDualRegister: slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'s call state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RegiGvnBase"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInServiceOnCellular(I)Z
    .locals 0

    .line 1443
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    .line 1444
    iget-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p1, :cond_0

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p1, 0x12

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOwnSlotNotConnected()Z
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 1463
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReadyToDualRegisterOnOtherSlotBusy(IZ)Z
    .locals 5

    .line 1467
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 1468
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    const/16 v1, 0x12

    const/4 v2, 0x1

    const-string v3, "RegiGvnBase"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1469
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 1470
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true - other slot is EPDG Call or Registering"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1474
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1475
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true - The slot will make E911 call"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1479
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-interface {p1, v0, v4, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result p1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    .line 1481
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true - This slot is going to register VoWifi"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1485
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1486
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true - This slot is going to register RCS only profile"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1490
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : false"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isRegistering(I)Z
    .locals 2

    .line 1419
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda21;-><init>()V

    .line 1420
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;I)V

    .line 1423
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1426
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isW2lInProgress(I)Z
    .locals 1

    .line 1400
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    .line 1402
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda17;-><init>()V

    .line 1403
    invoke-virtual {p0, p1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1408
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$checkUnProcessedVoLTEState$17(Ljava/util/concurrent/ScheduledFuture;)Z
    .locals 0

    .line 1709
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$checkUnProcessedVoLTEState$18(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 4

    .line 1710
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "checkUnProcessedVoLTEState: Send pending VoLTE state now"

    const-string v3, "RegiGvnBase"

    invoke-static {v3, v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1711
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1712
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->sendVolteState(IZ)V

    return-void
.end method

.method private static synthetic lambda$filterService$1(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 550
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$2(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from singleregi"

    .line 551
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getMatchedPdnFailReasonFromGlobalSettings$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1280
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMatchedPdnFailReasonFromGlobalSettings$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    .line 1281
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMatchedPdnFailReasonFromGlobalSettings$5(Lcom/sec/internal/constants/ims/core/PdnFailReason;Ljava/lang/String;)Z
    .locals 0

    .line 1282
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasEmergencyTaskInPriority$16(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3

    .line 1662
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasImsConnectingTask$11(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 1451
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasImsConnectingTask$12(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$hasImsConnectingTask$13(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 1453
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasPdnFailure()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$hasImsConnectingTask$14(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 1

    .line 1450
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda5;-><init>()V

    .line 1451
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;-><init>()V

    .line 1452
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda7;-><init>()V

    .line 1453
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1454
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasImsConnectingTask$15(ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;
    .locals 1

    .line 1456
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isReadyToDualRegister: slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is connecting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnBase"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1457
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isRegistering$10(ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;
    .locals 1

    .line 1424
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isReadyToDualRegister: slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is registering"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnBase"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1425
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$isRegistering$8(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 2

    .line 1421
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isRegistering$9(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 1

    .line 1420
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda20;-><init>()V

    .line 1421
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1422
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isW2lInProgress$6(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 1404
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isW2lInProgress$7(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;
    .locals 1

    .line 1403
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda8;-><init>()V

    .line 1404
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda9;-><init>()V

    .line 1405
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda10;-><init>()V

    .line 1406
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1407
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPackageDataCleared$0()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 192
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 191
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 192
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    .line 191
    invoke-static {v0, v1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 1
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

    .line 642
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "RegiGvnBase"

    const-string v0, "ipv4 address found"

    .line 643
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv4Addr(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-object p2
.end method

.method protected addIpv6Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 1
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

    .line 626
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasGlobalIPv6Address()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv6DefaultRoute()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 628
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv6Addr(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-object p2
.end method

.method public allowRoaming()Z
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "RegiGvnBase"

    const-string v0, "allowRoaming: Emergency profile. Return true."

    .line 1034
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1037
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result p0

    return p0
.end method

.method public applyCrossSimPolicy(Ljava/util/Set;I)Ljava/util/Set;
    .locals 3
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

    .line 445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 449
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo p1, "smsip"

    .line 450
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v0, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;
    .locals 0
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

    .line 430
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 434
    :goto_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getBlockedServicesForCrossSim()Ljava/util/Set;

    move-result-object p0

    const-string p2, "all"

    .line 435
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 436
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 437
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 438
    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-object p1
.end method

.method protected applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;
    .locals 9
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

    .line 1202
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1207
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "applyImsSwitch: sm is null!! retrun empty set"

    const-string p2, "RegiGvnBase"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1208
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1211
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v1

    const-string v2, "GCF"

    .line 1218
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1219
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 1220
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "enableServiceVolte"

    const/4 v2, 0x0

    .line 1222
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "enableServiceVowifi"

    .line 1223
    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "enableServiceSmsip"

    .line 1224
    invoke-static {v0, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "enableServiceVilte"

    .line 1225
    invoke-static {v0, v5, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "mmtel"

    const/16 v5, 0x12

    const-string/jumbo v6, "smsip"

    const-string v7, "mmtel-video"

    if-nez v1, :cond_2

    if-eq p2, v5, :cond_2

    const-string v1, "VoLTE MPS false"

    .line 1228
    invoke-virtual {p0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0, p1, v7, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0, p1, v6, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_MPS_DISABLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_2
    if-nez v3, :cond_3

    if-ne p2, v5, :cond_3

    const-string p2, "Vowifi MPS false"

    .line 1234
    invoke-virtual {p0, p1, v2, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0, p1, v7, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0, p1, v6, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_MPS_DISABLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_3
    if-nez v4, :cond_4

    const-string p2, "SMSIP MPS false"

    .line 1240
    invoke-virtual {p0, p1, v6, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    const-string p2, "Enable ViLTE MPS false"

    .line 1243
    invoke-virtual {p0, p1, v7, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method

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

    .line 1501
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1505
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p2

    const/16 v0, 0x12

    if-eq p2, v0, :cond_1

    .line 1506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "by VoLTE OFF, remove all service, RAT :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnBase"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1508
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public applyPsDataOffExempt(Ljava/util/Set;I)Ljava/util/Set;
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

    .line 461
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    const/16 v0, 0x12

    if-eq p2, v0, :cond_4

    .line 463
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 464
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isMmtelVoiceExempt()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "mmtel"

    const-string v0, "MMTEL Voice PS Data Off Exempt"

    .line 465
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isMmtelVoiceExempt()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isMmtelVideoExempt()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const-string p2, "mmtel-video"

    const-string v0, "MMTEL Video PS Data Off Exempt"

    .line 468
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSmsIpExempt()Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p2, "smsip"

    const-string v0, "SMS over IP PS Data Off Exempt"

    .line 471
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
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

    .line 608
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSmsoipUsagePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Irrespective_of_voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RegiGvnBase"

    if-eqz v0, :cond_1

    .line 613
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "SMSoIP can be used even if VoPS not supported. just filtering mmtel, mmtel-video."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    .line 614
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mmtel"

    .line 615
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "by VoPS policy: remove all service"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 618
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected checkCallStatus()Z
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RegiGvnBase"

    const-string v0, "isReadyToRegister: call state is not idle"

    .line 899
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected checkDelayedStopPdnEvent()Z
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasDelayedStopPdnEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 950
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RegiGvnBase"

    const-string/jumbo v0, "stopPdn would be called soon. Skip IMS registration"

    .line 951
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkEmergencyInProgress()Z
    .locals 3

    .line 1364
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1366
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1367
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected checkEmergencyStatus()Z
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkMdmnProfile()Z
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result p0

    return p0
.end method

.method protected checkNetworkEvent(I)Z
    .locals 1

    .line 917
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasNetworModeChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 918
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 919
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p1, v0, :cond_0

    const-string p1, "RegiGvnBase"

    const-string v0, "isReadyToRegister: networkModeChangeTimer Running."

    .line 920
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_NW_MODE_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected checkRegiStatus()Z
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 911
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isUpdateRegistering()Z

    move-result p0

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRegiStatus: getState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsUpdateRegistering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkRoamingStatus(I)Z
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 888
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 889
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->allowRoaming()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "RegiGvnBase"

    const-string v0, "isReadyToRegister: roaming is not allowed."

    .line 890
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkUnProcessedVoLTEState()V
    .locals 2

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mDelayedVolteOffFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 669
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv6Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v0

    .line 674
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ValidPcscfIp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnBase"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public checkValidPcscfIpForPcscfRestoration(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 690
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv6Addr(Ljava/util/List;Ljava/util/List;)V

    .line 695
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->addIpv4Addr(Ljava/util/List;Ljava/util/List;)V

    .line 697
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ValidPcscfIp: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiGvnBase"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected checkVolteSetting(I)Z
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 978
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RegiGvnBase"

    const-string v0, "isReadyToRegister: volte disabled"

    .line 979
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected checkWFCsettings(I)Z
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 930
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 931
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/helper/os/DeviceUtil;->getWifiStatus(Landroid/content/Context;I)I

    move-result p1

    .line 937
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 940
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnBase["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VoWiFi menu is not enabled or WIFI is not enabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v0

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public determineDeRegistration(II)Z
    .locals 6

    .line 1550
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "isNeedToDeRegistration:"

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1551
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x4

    if-nez p1, :cond_1

    .line 1553
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Deregister."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1554
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no IMS service for network : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1555
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1556
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    .line 1560
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 1561
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string p2, "TTY enabled"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1562
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 p2, 0x4b

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1563
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    .line 1567
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_3

    const/16 p2, 0x12

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1568
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 1569
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p2, "determineDeRegistration:  WiFi is connected."

    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1570
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1571
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    :cond_3
    return v3
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 9
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

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 483
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 485
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "volte"

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 486
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v5, "defaultmsgappinuse"

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v4, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 488
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 492
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "RegiGvnBase"

    const/16 v7, 0x12

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 493
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    if-nez v4, :cond_4

    .line 494
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq p2, v7, :cond_4

    const-string p0, "filterService: Mobile data off"

    .line 495
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_4
    if-eqz p1, :cond_6

    .line 501
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const-string v4, "mmtel"

    .line 502
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 503
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_5
    new-array v5, v2, [Ljava/lang/String;

    .line 505
    invoke-interface {p1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 506
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 507
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 508
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 509
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DM_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 513
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 514
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    new-array v4, v2, [Ljava/lang/String;

    .line 515
    invoke-interface {p1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 516
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 519
    :cond_7
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    const/16 v4, 0xb

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 520
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 521
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return-object v0

    .line 528
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isVideoCallEnabled()Z

    move-result p1

    const-string v5, "mmtel-video"

    if-nez p1, :cond_9

    const-string p1, "Videocall disabled."

    .line 529
    invoke-virtual {p0, v1, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isDualVideoCallAllowed(I)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "Non-DDS operator SIM"

    .line 534
    invoke-virtual {p0, v1, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v8}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 538
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v4, :cond_b

    if-eq p2, v7, :cond_b

    .line 539
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->allowRoaming()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 541
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMediaTypeRestrictionPolicy()Ljava/lang/String;

    move-result-object p1

    const-string v7, "Voice_Only"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 542
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v7, "Support Voice Only when roaming. just filtering mmtel-video."

    invoke-static {v6, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "voice only when roaming"

    .line 543
    invoke-virtual {p0, v1, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-nez v3, :cond_e

    .line 548
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 549
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v2}, Lcom/sec/internal/google/SecImsNotifier;->getSipDelegateServiceList(I)Ljava/util/List;

    move-result-object p1

    .line 550
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Ljava/util/Set;)V

    .line 551
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 553
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    const-string v3, "DefaultAppInUse is false"

    if-eqz p1, :cond_d

    .line 554
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    :goto_2
    if-ge v2, v5, :cond_e

    aget-object v6, p1, v2

    .line 555
    invoke-virtual {p0, v1, v6, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 558
    :cond_d
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    :goto_3
    if-ge v2, v5, :cond_e

    aget-object v6, p1, v2

    .line 559
    invoke-virtual {p0, v1, v6, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 565
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, v4, :cond_f

    .line 566
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->applyPsDataOffExempt(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 569
    :cond_f
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    .line 570
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_10
    return-object v1
.end method

.method protected forceTurnOnVoLte()V
    .locals 3

    .line 1742
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RegiGvnBase"

    const-string v1, "forceTurnOnVoLte : voicecall_type is not 0, force enable"

    .line 1743
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method protected forceTurnOnVoLteWhenMenuRemoved()V
    .locals 3

    .line 1749
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mIsVoLteMenuRemoved:Z

    if-eqz v0, :cond_0

    .line 1750
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "forceTurnOnVoLteWhenMenuRemoved: "

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->forceTurnOnVoLte()V

    :cond_0
    return-void
.end method

.method public getCurrentPcscfIp()Ljava/lang/String;
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "RegiGvnBase"

    if-eqz v0, :cond_0

    const-string p0, "getNextPcscf: empty P-CSCF list."

    .line 770
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p0, v2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPcscfIp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getFailureType()I
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDiscardCurrentNetwork:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    .line 415
    :cond_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x21

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public getMatchedPdnFailReasonFromGlobalSettings(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Ljava/lang/String;
    .locals 2

    .line 1276
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdn_fail_reason_list"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMatchedPdnFailReason: reasons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda2;-><init>()V

    .line 1280
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda3;-><init>()V

    .line 1281
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/constants/ims/core/PdnFailReason;)V

    .line 1282
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1283
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNextRetryMillis()J
    .locals 4

    .line 811
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentPdnFailed:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getNumOfEmerPcscfIp()I
    .locals 0

    .line 1730
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    return p0
.end method

.method public getNumOfPcscfIp()I
    .locals 0

    .line 1258
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateRegiPendingReason(ILcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)Ljava/lang/String;
    .locals 1

    .line 1516
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p3

    const/16 v0, 0xb

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 1520
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isReadyToRegister(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Governor is not ready"

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    if-eqz v0, :cond_2

    .line 1522
    iget p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isCellIdentityUnavailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "CellInfo is not yet updated"

    goto :goto_2

    .line 1524
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isSrvccCase()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p0, "suspended and not SRVCC"

    goto :goto_2

    .line 1526
    :cond_3
    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    const/16 p1, 0xf

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 1529
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "OOS and WiFi is not connected"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "OOS"

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    .line 1532
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz p0, :cond_7

    const-string p0, "Immediate update registration triggered but it\'s under update registering"

    goto :goto_2

    :cond_7
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method protected getVoiceTechType()I
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p0

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceTechType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, "VOLTE"

    goto :goto_0

    :cond_0
    const-string v1, "CS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected getVoiceTechType(I)I
    .locals 1

    .line 1014
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p0

    .line 1015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVoiceTechType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v0, "VOLTE"

    goto :goto_0

    :cond_0
    const-string v0, "CS"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnBase"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected getWaitTime()J
    .locals 6

    .line 801
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 804
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    return-wide v0

    .line 806
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleAlternativeCallState()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHandlePcscfOnAlternativeCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 376
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 377
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "call state changed"

    invoke-interface {v0, p0, v1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    return-void
.end method

.method protected handleForbiddenError(J)V
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryPcscfPolicyOn403()Ljava/lang/String;

    move-result-object p1

    const-string p2, "next_pcscf"

    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "RegiGvnBase"

    if-eqz p2, :cond_0

    .line 246
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "onRegistrationError: Retry to next PCSCF address in case 403 Forbidden"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "same_pcscf"

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 249
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "onRegistrationError: Retry to same PCSCF address in case 403 Forbidden"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_0

    :cond_1
    const-string p1, "onRegistrationError: Permanently prohibited."

    .line 253
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_2

    .line 256
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPcscfList()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handlePcscfError()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getWaitTime()J

    move-result-wide v2

    .line 276
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    .line 278
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    return-void
.end method

.method protected handleRetryTimer(J)V
    .locals 3

    .line 282
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 283
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getWaitTime()J

    move-result-wide p1

    .line 290
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    .line 291
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    return-void
.end method

.method protected handleTimeOutEmerRegiError()V
    .locals 3

    .line 1691
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1692
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    .line 1693
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getFailureCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getNumOfEmerPcscfIp()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestTryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_1

    .line 1694
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1696
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->notifyE911RegistrationFailed()V

    :cond_2
    if-nez v0, :cond_3

    .line 1699
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1700
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleTimeoutError(J)V
    .locals 1

    .line 263
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-ne p1, p2, :cond_0

    .line 264
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_0

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetPcscfList()V

    :cond_0
    return-void
.end method

.method public hasEmergencyTaskInPriority(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 1661
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1662
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda12;-><init>()V

    .line 1663
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public increasePcscfIdx()V
    .locals 3

    .line 1263
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lez v0, :cond_0

    .line 1264
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increasePcscfIdx: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected isCellIdentityUnavailable(I)Z
    .locals 4

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/PdnController;->getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object v0

    .line 1544
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCellIdentityUnavailable: rat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RegiGvnBase"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1545
    sget-object p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isDelayedDeregisterTimerRunningWithCallStatus()Z
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const-string v1, "RegiGvnBase["

    const-string v2, "]"

    if-nez v0, :cond_1

    .line 1131
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getCallStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 1133
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_1

    .line 1134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isDelayedDeregisterTimerRunning: Timer will start soon. return true."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDelayedDeregisterTimerRunning ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDelayedDeregisterTimerRunning:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDelayedDeregisterTimerRunning:Z

    return p0
.end method

.method protected isDeregisterWithRATNeeded()Z
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 1077
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1079
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeregisterWithRATNeeded ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected isDeregisterWithVoPSNeeded()Z
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 1088
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1091
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeregisterWithVoPSNeeded ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isEcEnabled(I)Z
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "postCallAuth"

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sharedSketchAuth"

    .line 1190
    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sharedMapAuth"

    .line 1191
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

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

.method protected isImsDisabled()Z
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v1, "ims"

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v0, "RegiGvnBase"

    const-string v2, "filterService: IMS is disabled."

    .line 579
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_1
    return v1
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 4

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    .line 1052
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1059
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckLocationSetting:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isLocationServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "RegiGvnBase"

    const-string p1, "locationService is disabled"

    .line 1060
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1064
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isCountryCodeLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 1067
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p0, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 1071
    :cond_3
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedRegiWhenLocationUnavailable()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public isMatchedPdnFailReason(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z
    .locals 0

    .line 1271
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getMatchedPdnFailReasonFromGlobalSettings(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNoNextPcscf()Z
    .locals 2

    .line 1251
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1252
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNoNextPcscf = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiGvnBase"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isReadyToDualRegister(Z)Z
    .locals 4

    const-string v0, "DSDS_DI"

    .line 1377
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RegiGvnBase"

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1379
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true - Non DSDS_DI"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1383
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 1384
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isW2lInProgress(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1385
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : false, other slot is re-registering for W2L handover"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1389
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isRegistering(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkOwnStateIfNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1390
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsPdnConnecting(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isOwnSlotNotConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1391
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isInCall(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1392
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isReadyToDualRegisterOnOtherSlotBusy(IZ)Z

    move-result p0

    return p0

    .line 1395
    :cond_5
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string p1, "isReadyToDualRegister : true"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isReadyToRegister(I)Z
    .locals 2

    .line 966
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkMdmnProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->checkEpdgEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkVolteSetting(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkDelayedStopPdnEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->checkRcsEvent(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSrvccCase()Z
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1183
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckSrvcc:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    .line 1184
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 1185
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected isVideoCallEnabled()Z
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result p0

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoCallEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, "Enable"

    goto :goto_0

    :cond_0
    const-string v1, "Disable"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isWiFiSettingOn()Z
    .locals 2

    .line 1170
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 1173
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiManager.isWifiEnabled() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needPendingPdnConnected()Z
    .locals 4

    .line 1668
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1669
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->hasEmergencyTaskInPriority(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x16

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1673
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPdnConnected: delay "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to priority of Emergency."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiGvnBase"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAdsChanged(I)V
    .locals 1

    .line 1735
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updateVolteState()V

    .line 1736
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1737
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->ADS_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    :cond_0
    return-void
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 1

    .line 387
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

    const-string p3, "RegiGvnBase"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    goto :goto_0

    .line 390
    :cond_0
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 391
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    goto :goto_0

    .line 392
    :cond_1
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, p2, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleAlternativeCallState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onManualDeregister(Z)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 8

    .line 1607
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1608
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1610
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    const-string v5, "RegiGvnBase"

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    .line 1611
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManualDeregister: emergency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", explicit dereg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "manual deregi"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1615
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :cond_1
    :goto_0
    invoke-virtual {v0, p0, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_2

    .line 1616
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManualDeregister: disconnecting PDN network "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1618
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1619
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1620
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1621
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    return-object p0

    .line 1623
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 1649
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v4, v5, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object p1

    .line 1650
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1649
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1652
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1653
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    return-object p0

    :cond_6
    :goto_1
    const-string p1, "onManualDeregister: disconnect Emergency PDN."

    .line 1624
    invoke-static {v5, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1625
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "manual deregi(EPDN)"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1626
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1629
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p1, v0, :cond_7

    .line 1630
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v1, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1632
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1633
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    if-ne p1, v0, :cond_a

    .line 1639
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->needKeepEmergencyTask()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1642
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegisterTask;->keepEmergencyTask(Z)V

    goto :goto_2

    .line 1643
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1644
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    return-object p0

    :cond_9
    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 1647
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    return-object p0
.end method

.method public bridge synthetic onManualDeregister(Z)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onManualDeregister(Z)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    return-object p0
.end method

.method public onPackageDataCleared(Landroid/net/Uri;)V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string v1, "onReceive: ACTION_PACKAGE_DATA_CLEARED is received"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received is packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSamsungMsgPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mSamsungMsgPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mSamsungMsgPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mSamsungMsgPackage:Ljava/lang/String;

    .line 187
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 190
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "jibe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setBotAgreementToFile(I)V

    .line 195
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyChatbotAgreementChanged(I)V

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 197
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 198
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    .line 196
    invoke-static {p1, v0, v1, p0}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 200
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    .line 201
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turn off RCS for block data connection alert. phoneCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 203
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 205
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    .line 191
    :cond_5
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method protected onPdnFailCounterInNr()V
    .locals 4

    .line 1717
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1718
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1719
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 1721
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v2, "notifyImsNotAvailable"

    const-string v3, "RegiGvnBase"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    const/4 v0, 0x0

    .line 1723
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    :cond_0
    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 0

    const/4 p1, 0x1

    .line 1149
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasPdnFailure:Z

    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 340
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

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v1, 0x0

    .line 342
    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 343
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 344
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 2

    .line 296
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPermanentStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    move-wide p2, v0

    .line 307
    :cond_0
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 308
    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 310
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

    .line 311
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleTimeOutEmerRegiError()V

    return-void

    .line 315
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 316
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleForbiddenError(J)V

    .line 317
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-eqz p1, :cond_5

    return-void

    .line 320
    :cond_2
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 321
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleTimeoutError(J)V

    goto :goto_0

    .line 322
    :cond_3
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handlePcscfError()V

    return-void

    .line 325
    :cond_4
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    cmp-long p1, p2, v0

    if-eqz p1, :cond_5

    .line 331
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-gez p1, :cond_5

    .line 332
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 335
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleRetryTimer(J)V

    return-void
.end method

.method public onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
    .locals 3

    .line 225
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationTerminated: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 228
    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 229
    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 233
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 p2, 0x3e8

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/32 p2, 0x1f400

    .line 238
    :cond_2
    :goto_0
    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 239
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mmtel"

    .line 401
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 403
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    :cond_1
    return-object p2
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 0

    .line 1144
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->setCallStatus(I)V

    return-void
.end method

.method public onTimsTimerExpired()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "TimsExpired"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setNotAvailableReason(I)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    return-void
.end method

.method protected onUltraPowerSavingModeChanged()I
    .locals 6

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "RegiGvnBase"

    if-nez v0, :cond_0

    const-string p0, "onUltraPowerSavingModeChanged: SemEmergencyManager is null!"

    .line 1333
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1337
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    .line 1338
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v0

    .line 1339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUltraPowerSavingModeChanged: emergency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", UPSM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 1342
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    if-eqz v0, :cond_1

    const-string p0, "EM is already enabled, so skip."

    .line 1343
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "EM is enabled"

    .line 1345
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v5

    .line 1351
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, "EM is disabled"

    .line 1352
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mUpsmEnabled:Z

    .line 1354
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->releaseThrottle(I)V

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method public releaseThrottle(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 993
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 994
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    goto :goto_1

    .line 991
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 997
    :cond_2
    :goto_1
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez p0, :cond_3

    .line 998
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseThrottle: case by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiGvnBase"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected removeCurrentPcscfAndInitialRegister(Z)V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;Z)V

    .line 368
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCurrentPcscfAndInitialRegister(): curPcscfIp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mNumOfPcscfIp "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCurPcscfIpIndex "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPcscfIpList "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiGvnBase"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 422
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 423
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegisterTask;->addFilteredReason(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetRetry()V
    .locals 3

    const-string v0, "RegiGvnBase"

    const-string/jumbo v1, "resetRetry()"

    .line 781
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 783
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 784
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 785
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    const-wide/16 v1, 0x0

    .line 786
    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 787
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 788
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->resetIPSecAllow()V

    return-void
.end method

.method public runDelayedDeregister()V
    .locals 3

    .line 1103
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runDelayedDeregister : delete DelayedDeregisterTimer. mState ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1108
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->setDelayedDeregisterTimerRunning(Z)V

    .line 1110
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto :goto_1

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_4

    .line 1115
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_1

    .line 1116
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 1121
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :goto_1
    return-void
.end method

.method protected sendRawRequestToTelephony(Landroid/content/Context;[B)V
    .locals 0

    .line 1291
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->sendRawRequestToTelephony(Landroid/content/Context;[B)V

    return-void
.end method

.method protected servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, p1, p0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 588
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 589
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 590
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 597
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 598
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 599
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v6, 0x1

    invoke-static {v4, v3, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected setBotAgreementToFile(I)V
    .locals 3

    .line 213
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBotAgreementToFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnBase"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v1, "IMSI_"

    if-eqz v0, :cond_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v2, "bot_agreement_from_app"

    invoke-static {v0, p0, v2, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setDelayedDeregisterTimerRunning(Z)V
    .locals 2

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDelayedDeregisterTimerRunning ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mDelayedDeregisterTimerRunning:Z

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setDelayedDeregisterTimerRunning(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method protected setUpsmEventReceiver()V
    .locals 2

    const-string v0, "RegiGvnBase"

    const-string/jumbo v1, "setUpsmEventReceiver."

    .line 1301
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 1304
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    sget-object v1, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 1306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected startRetryTimer(J)V
    .locals 2

    .line 871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 872
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetryTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    return-void
.end method

.method protected startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V
    .locals 5

    .line 815
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v1, "RegiGvnBase"

    if-eqz v0, :cond_0

    const-string p0, "Emergecy Task doens\'t required Tims timer."

    .line 816
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 820
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-string v2, "]"

    const-string v3, ", reason = ["

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz v0, :cond_1

    const-string p0, "TimsRCS is running. don\'t need to start new timer."

    .line 822
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 825
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start TimsRCS timer; millis = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startTimsEshtablishTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

    return-void

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz v0, :cond_3

    const-string p0, "Tims is running. don\'t need to start new timer."

    .line 832
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 835
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTimsEstablishTimer: millis = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutReason:Ljava/lang/String;

    .line 838
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startTimsEshtablishTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected stopRetryTimer()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 882
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRetryTimer; what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 884
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRetryTimeout:Landroid/os/Message;

    return-void
.end method

.method protected stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V
    .locals 3

    .line 843
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-string v1, "RegiGvnBase"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stop TimsRCS timer by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz p1, :cond_0

    .line 846
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Lcom/sec/internal/helper/DelayedMessage;)V

    .line 847
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutRCS:Lcom/sec/internal/helper/DelayedMessage;

    :cond_0
    return-void

    .line 852
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stop Tims timer by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    if-eqz p1, :cond_2

    .line 854
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Lcom/sec/internal/helper/DelayedMessage;)V

    .line 855
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeout:Lcom/sec/internal/helper/DelayedMessage;

    .line 856
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mTimEshtablishTimeoutReason:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnBase [mMno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFailureCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPermanentStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurPcscfIpIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumOfPcscfIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurImpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPcscfIpList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIPsecAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIPsecAllow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMoveToNextPcscfAfterTimerB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRegiAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mHasVoLteCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRegBaseTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRegMaxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toggleTimsTimerByPdnTransport(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "RegiGvnBase"

    if-ne p1, v0, :cond_0

    .line 862
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "onPdnConnecting: IMS PDN connecting on cellular. Start TIMS timer"

    invoke-static {v1, p1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    const-string p1, "ImsPdnRequst"

    .line 863
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 865
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "onPdnConnecting: IMS PDN connecting on ePDG. Stop TIMS timer"

    invoke-static {v1, p1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    const-string p1, "ePDGConnecting"

    .line 866
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    const-string v0, "Un-register Intent receiver(s)"

    const-string v1, "RegiGvnBase"

    .line 1313
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1316
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPackageDataClearedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "unRegisterIntentReceiver: Receiver not registered!"

    .line 1318
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected updateGeolocation(Ljava/lang/String;)Z
    .locals 6

    .line 1580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1581
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 1582
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 1583
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->releaseThrottle(I)V

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1588
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1589
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    .line 1590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1591
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1592
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v4, v4, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-nez v4, :cond_4

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v3, :cond_4

    const-string v3, "RegiGvnBase"

    const-string/jumbo v4, "updateRegistration as Country Code change"

    .line 1594
    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1595
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 1596
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v3, "update location"

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->GEOLOCATION_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    .line 1599
    :cond_4
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCountry:Ljava/lang/String;

    :cond_5
    return v2
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

    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;Z)V

    return-void
.end method

.method protected updatePcscfIpList(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "RegiGvnBase"

    if-nez p1, :cond_0

    const-string/jumbo p0, "updatePcscfIpList: null P-CSCF list!"

    .line 708
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 715
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 716
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    .line 718
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v2, "pcscf updated"

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    if-ltz p1, :cond_5

    .line 721
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v9, v10}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 722
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePcscfIpList: keeping "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as current forceInitialRegi="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMoveToNextPcscfAfterTimerB="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-eqz p2, :cond_4

    .line 727
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 728
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    if-eqz p1, :cond_2

    .line 729
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 730
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 731
    iput-wide v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 732
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    goto :goto_1

    .line 734
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    .line 736
    :goto_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mMoveToNextPcscfAfterTimerB:Z

    .line 739
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    filled-new-array {v9, v10}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 740
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 741
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    invoke-interface {p1, p2, v3, p0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_4

    .line 745
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_8

    .line 746
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_4

    .line 750
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updatePcscfIpList: whole new set of PCSCFs ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 757
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetRetry()V

    goto :goto_3

    .line 752
    :cond_7
    :goto_2
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 753
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurImpu:I

    .line 754
    iput-wide v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 755
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    .line 760
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p2, v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 761
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 762
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    invoke-interface {p1, p2, v3, p0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method protected updateVolteState()V
    .locals 4

    .line 1681
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->getMatchedSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACG"

    .line 1682
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1683
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1684
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType(I)I

    move-result v0

    .line 1685
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVolteState for ACG/LRA DSDS : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnBase"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1686
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->sendVolteState(IZ)V

    :cond_2
    return-void
.end method
