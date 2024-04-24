.class Lcom/sec/internal/ims/core/NetworkEventController;
.super Ljava/lang/Object;
.source "NetworkEventController.java"


# static fields
.field private static final EPDG_EVENT_TIMER:I = 0x1d8a8

.field static final IMS_DM_START:Ljava/lang/String; = "10"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-NetEvtCtr"


# instance fields
.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetType:I

.field private mNwChanged:Z

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field protected mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field protected mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

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

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mWiFi:Z


# direct methods
.method public static synthetic $r8$lambda$0B_TSDREjoFjgm-HVIkoN_Kxy1Y(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnConnecting$0(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9PZNE4qVhGxqIo-5_cnqMdfHHko(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnConnecting$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgBcD_U-DZkoDhzYh8uYIplTaTM(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onEpdgIkeError$4(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YwPw7M7wCTHVJ9fCPCTHTcDME4w(Lcom/sec/internal/ims/core/NetworkEventController;IIILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnFailed$3(IIILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRIy81ioMVSZIvP15pacjoYwLVw(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onEpdgIkeError$5(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS3mJd2KOoniXsUUf1xNtjAJNaA(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnFailed$2(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 579
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 580
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 579
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 580
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 120
    iput-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 121
    iput-object p4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    .line 122
    iput-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 123
    iput-object p6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 124
    iput-object p7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 125
    iput-object p8, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 126
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "RegiMgr-NetEvtCtr"

    const/16 p4, 0x12c

    invoke-direct {p2, p1, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V
    .locals 6

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterByDefaultNwChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
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

    const-string v1, ") needDeregi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1474
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1478
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1479
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1480
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_4

    .line 1482
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/16 p2, 0xc

    .line 1486
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1487
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1490
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1491
    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1493
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    const-string p3, "deregisterByDefaultNwChanged: stop pdn"

    .line 1494
    invoke-static {v1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1495
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V
    .locals 9

    .line 1220
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1221
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 1223
    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1224
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1226
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottledforImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1227
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1234
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_5

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkEventChanged: event.isDataStateConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " old.isDataStateConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " event.outOfService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " old.outOfService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " task.getPdnType() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isWifiConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1240
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1241
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-ne v0, v1, :cond_5

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array/range {v3 .. v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 1242
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1243
    invoke-virtual {p0, p2, p1, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    :cond_5
    if-nez p5, :cond_7

    if-eqz p6, :cond_6

    goto :goto_1

    :cond_6
    const-string p5, "onNetworkEventChanged: sendTryRegister"

    .line 1251
    invoke-static {v2, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1252
    iget-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string p5, "onNetworkEventChanged: do not call sendTryRegister"

    .line 1249
    invoke-static {v2, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1256
    :cond_8
    :goto_2
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne p4, p5, :cond_9

    .line 1257
    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_9
    return-void
.end method

.method private handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1201
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const-string v2, "RegiMgr-NetEvtCtr"

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v0, v1, :cond_0

    iget-boolean p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p4, v0, :cond_1

    :cond_0
    const-string p4, "onNetworkEventChanged: roaming or ps-voice-only mode changed in de-registering state"

    .line 1203
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1204
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p4

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p4, v0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1208
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object p4, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p3, p4, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1209
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1210
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-virtual {p0, p3, p4, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CU, if not in LTE,will stop pdn when in deregistering state caused by pdn lost"

    .line 1211
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1212
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    :cond_2
    return-void
.end method

.method private handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 7

    const-string v0, "out of service."

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1287
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1289
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1291
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const-string v2, "Set OutOfService True for RJIL"

    .line 1292
    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1293
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setOutOfService(ZI)V

    .line 1296
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "set EVENT_RCS_DELAYED_DEREGISTER"

    .line 1297
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x8e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1299
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1302
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1303
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RCS deregister OOS during CS call"

    .line 1304
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 1305
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1306
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1310
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    const-string v2, "ESN send local deregi and PDN disconnect"

    .line 1311
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1315
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Send local deregi and PDN disconnect after CSFB"

    .line 1316
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1321
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "remove_icon_nosvc"

    invoke-interface {p2, v0, v1, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1322
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1323
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_5
    return-void
.end method

.method private handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 2

    .line 1328
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1329
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1333
    :cond_0
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1334
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v0, :cond_3

    .line 1336
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_3

    const-string/jumbo v0, "ro.boot.hardware"

    const-string v1, ""

    .line 1337
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-nez v0, :cond_3

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 1339
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleRestrictionOnNetworkEventChanged: task:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RegiMgr-NetEvtCtr"

    .line 1339
    invoke-static {v0, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 1341
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string p3, "handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(qcom non DDS is cs only in 3G)"

    .line 1342
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1343
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    const-string p3, "handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(non DDS in 3G)"

    .line 1344
    invoke-static {v0, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1345
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p1, p3, v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1346
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;J)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method private handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1355
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1356
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1357
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const-string p3, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string p1, "onNetworkEventChanged: remove SSAC re-regi"

    .line 1358
    invoke-static {p3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1359
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const-string p0, "onNetworkEventChanged: set SSAC to default"

    .line 1362
    invoke-static {p3, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1363
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    :cond_1
    return-void
.end method

.method private isHandoverBetweenEpdgAndLeagacy(II)Z
    .locals 1

    .line 0
    if-eq p1, p2, :cond_2

    if-eqz p2, :cond_2

    const/16 p0, 0xd

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    if-ne p2, p0, :cond_1

    :cond_0
    if-eq p1, p0, :cond_2

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3

    .line 1646
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1647
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onEpdgIkeError$4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 1524
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

.method private static synthetic lambda$onEpdgIkeError$5(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 1525
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgIkeError()V

    return-void
.end method

.method private static synthetic lambda$onPdnConnecting$0(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 352
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

.method private static synthetic lambda$onPdnConnecting$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V
    .locals 0

    .line 354
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnecting(I)V

    return-void
.end method

.method private static synthetic lambda$onPdnFailed$2(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 705
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

.method private synthetic lambda$onPdnFailed$3(IIILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4

    .line 707
    invoke-static {p1}, Lcom/sec/internal/constants/ims/core/PdnFailReason;->valueOf(I)Lcom/sec/internal/constants/ims/core/PdnFailReason;

    move-result-object p1

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p4, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PDN FAIL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1101000a

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 710
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 713
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getRetryTimeOnPdnFail()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 716
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 717
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 718
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 720
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.retryTimeExpired"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "EXTRA_PHONE_ID"

    .line 721
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p2, p3, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 725
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setRetryTimeOnPdnFail(J)V

    :cond_1
    return-void
.end method

.method private lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isValidPcscfAddress(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-eqz v4, :cond_10

    .line 174
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 177
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v4

    .line 183
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    :goto_1
    move-wide v8, v6

    .line 186
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "netId: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_6

    .line 188
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getNeedNaptrDns()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    const-string v6, "TLS"

    .line 190
    iget-object v7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v7, p1, v6}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 193
    iget-object v7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v7, p1, v4}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 195
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "NAPTR"

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 200
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const-string v7, "not ipv4 dns"

    invoke-static {v5, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "NAPTR"

    const-string v7, ""

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_6
    if-eqz v4, :cond_a

    .line 207
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegistrationManager;->getAresLookupRequired()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 208
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_sip._tls."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 211
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 213
    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 214
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 218
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 219
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const-string v4, "ATT SoftPhone : found ipv4 dns"

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v7, "tcp"

    const-string v11, "IPV4"

    move-object v1, p1

    move-object v2, p3

    move-object v4, v6

    move-object v6, v7

    move-object v7, v11

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v6, "tcp"

    const-string v7, ""

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 228
    :cond_a
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_d

    .line 229
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 230
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 231
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 232
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 235
    :cond_b
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_4
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 236
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 240
    :cond_c
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 241
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-static {v4, v6, p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHostAddressWithThread(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_6

    .line 244
    :cond_d
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_5
    if-ge v6, v7, :cond_e

    aget-object v8, v4, v6

    .line 245
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 249
    :cond_e
    :goto_6
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 251
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 252
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 255
    :catch_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "getPcscfIpAddresses: faild to resolve dns query... "

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setAresLookupRequired(Z)V

    .line 257
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_f

    .line 258
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 260
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "CMC dns query failed"

    invoke-static {v5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 266
    :cond_10
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPcscfIpAddresses: pcscf is not valid... continue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    :goto_7
    return-object v10
.end method

.method private setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 2

    .line 806
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOmaDmStateDB<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiMgr-NetEvtCtr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :try_start_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dm_state"

    const-string v1, "10"

    .line 813
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sim_slot_id"

    .line 814
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.ims.dm.ContentProvider/imsDmStart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 817
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOmaDmStateDB : update failure - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_0

    .line 1387
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNetType()I
    .locals 0

    .line 583
    iget p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    return p0
.end method

.method public getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 138
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 141
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasValidPcscfIpList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    .line 144
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 149
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 150
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 153
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 158
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 159
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method handOffEventTimeout(I)V
    .locals 3

    .line 1518
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handOffEventTimeout: mNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWiFi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1519
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkEventBeforeRegister: new network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", old network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RegiMgr-NetEvtCtr"

    invoke-static {v6, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1007
    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1008
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1009
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v8

    .line 1010
    :goto_0
    invoke-virtual/range {p3 .. p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v8

    .line 1011
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x6

    if-eqz v10, :cond_5

    .line 1012
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v13, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v13, :cond_2

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v10, :cond_2

    const-string v10, "onNetworkEventChanged: WiFi has turned off. release throttle."

    .line 1013
    invoke-static {v6, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    const/4 v13, 0x2

    invoke-interface {v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1017
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_3

    .line 1019
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_2

    .line 1020
    :cond_3
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v13, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v10, v13, :cond_4

    .line 1021
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_2

    .line 1022
    :cond_4
    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v10, :cond_5

    iget-boolean v10, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v10, :cond_5

    .line 1023
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    const/16 v13, 0xe

    invoke-interface {v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1029
    :cond_5
    :goto_2
    iget-object v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v13, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/16 v14, 0xb

    if-ne v10, v13, :cond_6

    .line 1030
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    if-ne v10, v14, :cond_6

    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1031
    invoke-static {v10}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1034
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    .line 1035
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1036
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v13

    invoke-virtual {v10, v13, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1037
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1043
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    sget-object v15, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v13, v15, v7, v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1044
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v10, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    if-ne v7, v14, :cond_7

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v7, :cond_7

    .line 1045
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v7, v10, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1046
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1050
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v10, :cond_8

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v7, :cond_8

    const-string v7, "onNetworkEventChanged: Wifi connected in CMC profile. Stop the conneting PDN"

    .line 1051
    invoke-static {v6, v1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1052
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v7, v10, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1053
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1056
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v10, v11}, [Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    const/16 v10, 0x14

    if-eqz v7, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    if-ne v7, v14, :cond_d

    .line 1057
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDelayedDeregisterTimerRunning()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1058
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1059
    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkEventChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attached while DelayedDeregisterTimer running."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_3

    :cond_9
    const-string v0, "onNetworkEventChanged: Do not stop IMS PDN on delayedDeregisterTimer running"

    .line 1063
    invoke-static {v6, v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    return v8

    .line 1066
    :cond_a
    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1067
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllPcscfChecked()V

    goto :goto_4

    .line 1068
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v7, v10, :cond_c

    iget v11, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v7, v11, :cond_c

    .line 1069
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/4 v11, 0x6

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1072
    :cond_c
    :goto_4
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v7

    if-eqz v7, :cond_d

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v11, 0x10

    if-ne v7, v11, :cond_d

    return v8

    .line 1079
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v11, :cond_12

    .line 1080
    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v11

    invoke-direct {v0, v7, v11}, Lcom/sec/internal/ims/core/NetworkEventController;->isHandoverBetweenEpdgAndLeagacy(II)Z

    move-result v7

    .line 1081
    iget-object v11, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 1082
    iget v12, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v12}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "A4"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_5

    :cond_e
    move v11, v8

    :goto_5
    if-nez v7, :cond_f

    if-eqz v11, :cond_12

    :cond_f
    if-eqz v7, :cond_10

    const-string v7, "Handover Between VoWifi and 2G/3G"

    .line 1085
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v7, "RWC 5G SIM doesn\'t support IMS on 2G/3G"

    .line 1087
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1090
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v7, v11, :cond_11

    .line 1091
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v12

    invoke-virtual {v7, v12, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1092
    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1095
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1096
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/4 v11, 0x6

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1101
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1102
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v16, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    sget-object v17, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    sget-object v18, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    sget-object v19, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    sget-object v20, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    sget-object v21, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v16 .. v21}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_13

    .line 1104
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/16 v11, 0x9

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1107
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->YOIGO_SPAIN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v5, :cond_14

    .line 1108
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1111
    :cond_14
    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v5, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity(), task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1113
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1114
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    return v8

    .line 1119
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    if-ne v5, v14, :cond_16

    .line 1120
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_16

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eq v5, v7, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1121
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1124
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v8, 0xd

    if-eq v5, v7, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->WIND:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_1f

    .line 1125
    :cond_17
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1126
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v7, "PlmnChanged"

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v5

    sget-object v11, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-ne v5, v11, :cond_18

    const-string v5, "PLMN changed but Permanent Stopped. Do nothing!"

    .line 1128
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1135
    :cond_18
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v11, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v11, :cond_19

    .line 1136
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1139
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1140
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v7, 0x9

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1145
    :cond_1a
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v7, :cond_1b

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_1b

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v7, :cond_1b

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v8, :cond_1c

    :cond_1b
    if-eqz v9, :cond_1e

    :cond_1c
    if-eqz v9, :cond_1d

    const-string v5, "VopsChanged"

    goto :goto_8

    :cond_1d
    const-string v5, "ImsPdnRequst"

    .line 1149
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1152
    :cond_1e
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1153
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1157
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_21

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kddi throttled, check Network Map for network="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v5, v8, :cond_20

    .line 1160
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v7, 0xc

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_9

    :cond_20
    if-ne v5, v10, :cond_21

    .line 1162
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1166
    :cond_21
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1167
    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v5, v7, :cond_22

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v5, v7, :cond_23

    :cond_22
    const-string v5, "onNetworkEventChanged: roaming or ps-voice-only mode changed in idle/connecting state"

    .line 1168
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 1170
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 1169
    invoke-interface {v5, v6, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1174
    :cond_23
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v3, :cond_24

    .line 1175
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 8

    .line 916
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    const/4 v1, 0x0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_0

    const-string p4, "out of service."

    .line 917
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 919
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V

    return v1

    .line 924
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    if-eq v0, v3, :cond_1

    const-string v0, "onNetworkEventChanged: setRegistrationRat"

    .line 925
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 929
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 934
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7

    .line 936
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 937
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x79

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 939
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 948
    :cond_3
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/16 v5, 0x326

    if-ne v0, v3, :cond_5

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 949
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/16 p4, 0x3c

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "tvolte_hys_timer"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 950
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pending re-regi to T_VoLTE_hys["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] secs."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 952
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 953
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v2, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 956
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 960
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p4

    const/16 v0, 0xe

    if-ne p4, v0, :cond_6

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 962
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 p4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "t_delay"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 963
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkChanged: C2L, Tdelay="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-lez p3, :cond_6

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 970
    :cond_6
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p0, "do not update registration due to HYS"

    .line 971
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 974
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_8

    .line 977
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 978
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    goto/16 :goto_0

    .line 980
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_c

    .line 981
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-ne p1, v0, :cond_9

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, v0, :cond_a

    :cond_9
    const-string p1, "onNetworkChanged: roaming event changed, check location cache"

    .line 982
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    .line 985
    :cond_a
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne p1, v0, :cond_b

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, p4, :cond_d

    :cond_b
    const-string p1, "onNetworkEventChanged: roaming or ps-voice-only mode changed in registering/registered state"

    .line 986
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p1, p4, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    goto :goto_0

    .line 989
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p4

    if-eqz p4, :cond_d

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p4, 0x10

    if-ne p3, p4, :cond_d

    .line 990
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p3, :cond_d

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "RCS deregister during CS call - GSM : same as OOS"

    .line 991
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 992
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 993
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    :cond_d
    :goto_0
    const-string p1, "by network event changed"

    .line 997
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 998
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->NETWORK_EVENT_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    return v4
.end method

.method handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 5

    .line 1368
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    const/16 v3, 0x84

    const-string v4, "VopsChanged"

    if-ne v0, v1, :cond_1

    .line 1369
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1370
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1372
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1373
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto :goto_0

    .line 1375
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1376
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1377
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1378
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1379
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p3, 0x14

    if-ne p2, p3, :cond_3

    .line 1380
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method hasRetryIntentOnPdnFail()Z
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDomainPattern(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 167
    invoke-static {p1}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNwChanged()Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return p0
.end method

.method isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z
    .locals 5

    .line 1409
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1410
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    return v2

    .line 1414
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_9

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    goto/16 :goto_2

    .line 1423
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1424
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v0

    .line 1425
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v1

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreferredPdnForRCSRegister: isNeedDelayedDeregister ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], preferred PDN ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], needDeregi ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr-NetEvtCtr"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    if-ne v1, v2, :cond_3

    .line 1430
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x12

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1431
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isPreferredPdnForRCSRegister : Delay event"

    invoke-virtual {p3, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1432
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1435
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "isPreferredPdnForRCSRegister : Now pending"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_0

    .line 1438
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    :goto_0
    return v2

    .line 1444
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 1449
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v0

    .line 1450
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 1455
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    const/4 v2, 0x0

    .line 1458
    :cond_6
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1460
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    if-eq v3, p1, :cond_7

    .line 1461
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 1464
    :cond_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 1466
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    goto :goto_1

    :cond_9
    :goto_2
    return v2
.end method

.method isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 415
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWiFi()Z
    .locals 0

    .line 587
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    return p0
.end method

.method needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 6

    .line 505
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 508
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_9

    .line 509
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 512
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 519
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v3, "RegiMgr-NetEvtCtr"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 521
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 522
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    :cond_2
    const-string p0, "needEmergencyRegistration[AUS]: limited mode but has valid SIM. Try register."

    .line 523
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 527
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for Canada."

    .line 528
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 532
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 534
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_5

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEmcAttachAuth()I

    move-result p0

    if-ne p0, v4, :cond_5

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for GCF if EmcAttachAuth success"

    .line 535
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const-string p0, "needEmergencyRegistration: limited mode. skip emergency registration."

    .line 539
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 543
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_8

    .line 545
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSelfActivationRequired(I)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "Get PCO 5. Skip emergency registration."

    .line 546
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v4

    :cond_9
    :goto_0
    return v2
.end method

.method notifyNetworkEvent(IZI)V
    .locals 10

    .line 617
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v8

    if-eqz v9, :cond_1

    if-nez v8, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 623
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType()I

    move-result v2

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v3

    .line 624
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v5

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgAVailable()Z

    move-result v6

    move v0, p3

    move v1, p1

    move v4, p2

    move-object v7, v9

    .line 622
    invoke-static/range {v0 .. v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->buildNetworkEvent(IIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    .line 625
    invoke-virtual {p1, v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsIgnoreEpdg(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 626
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method onCheckUnprocessedOmadmConfig(I)V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckUnprocessedOmadmConfig<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: triggerOmadmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 747
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    :cond_0
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)Z
    .locals 5

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1609
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3a

    .line 1612
    invoke-static {p1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1613
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DM item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",INVLD DM: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x11010004

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v2

    .line 1618
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyDmValueChanged(Ljava/lang/String;I)V

    .line 1625
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1627
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1628
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onConfigUpdated()V

    .line 1629
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v2, "onConfigUpdated:  mOmadmState is FINISHED"

    .line 1630
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "IMS configuration changed"

    .line 1633
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1634
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->IMS_CONFIGURATION_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 1635
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_3

    .line 1636
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method onDefaultNetworkStateChanged(I)V
    .locals 3

    .line 1503
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1506
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1509
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1514
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method onDmConfigCompleted(IZ)V
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDmConfigCompleted<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v1, "TIMEOUT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 754
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 756
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeDmConfigTimeout(I)V

    .line 757
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 758
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 759
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    goto :goto_1

    .line 761
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    return-void
.end method

.method onEpdgConnected(I)V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "onEpdgConnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 276
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 281
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 283
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 285
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 289
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgConnected()V

    .line 290
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EPDG HO : L2"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const-string v6, "C"

    goto :goto_1

    :cond_2
    const-string v6, "W"

    .line 292
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 294
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 295
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->blockImmediatelyUpdateRegi()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 296
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v5, v3, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto/16 :goto_0

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected onEpdgDeregisterRequested(I)V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method onEpdgDisconnected(I)V
    .locals 8

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "onEpdgDisconnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 309
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 314
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 316
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 318
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgDisconnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 323
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgDisconnected()V

    .line 325
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 326
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkEmergencyInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_2

    const-string v0, "onEpdgDisconnected: Skip re-registration due to Emergency registration"

    .line 327
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 332
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPDG HO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    const-string v5, "C"

    goto :goto_1

    :cond_3
    const-string v5, "W"

    .line 333
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 334
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 336
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    .line 337
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_DISCONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v5, v3, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto/16 :goto_0

    .line 339
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onEpdgIkeError(I)V
    .locals 0

    .line 1523
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;-><init>()V

    .line 1524
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda4;-><init>()V

    .line 1525
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onIpsecDisconnected(I)V
    .locals 7

    const-string v0, "onIpsecDisconnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1529
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 1531
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 1532
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v3

    .line 1534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpsecDisconnected: VoWiFi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_2

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1536
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1538
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1539
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1541
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1542
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    .line 1543
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Stop pdn when ipsec disconnected."

    .line 1544
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1546
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 1581
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocalIpChanged()V

    .line 1582
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "local IP changed"

    .line 1583
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1584
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1585
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1588
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1589
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1590
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 1591
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    :cond_2
    return-void
.end method

.method onNetworkChanged(IZI)V
    .locals 3

    .line 599
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: suspendByIrat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isNeedCellLocationUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 604
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 607
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->updateRat(II)V

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->notifyNetworkEvent(IZI)V

    goto :goto_0

    .line 610
    :cond_1
    iput p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 611
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    const/4 p1, 0x1

    .line 612
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    :goto_0
    return-void
.end method

.method onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 13

    .line 822
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v7

    .line 823
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v7, :cond_d

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 830
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkEventChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "RegiMgr-NetEvtCtr"

    invoke-static {v8, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 832
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 833
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 834
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v1

    invoke-interface {v1, v7, p1, p2}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 836
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v0, v10

    move v1, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 837
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isExistRetryTimer()Z

    move-result v0

    move v11, v0

    move v1, v10

    goto :goto_1

    :cond_1
    move v11, v0

    .line 843
    :goto_1
    invoke-direct {p0, v2, p2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 845
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 847
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 852
    :cond_2
    invoke-virtual {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 856
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v3, v4, v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    invoke-virtual {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    move v0, v11

    goto :goto_0

    .line 862
    :cond_4
    invoke-direct {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    :cond_5
    move v12, v1

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move-object v4, v7

    move v5, v11

    move v6, v12

    .line 864
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V

    move v0, v11

    move v1, v12

    goto :goto_0

    .line 867
    :cond_6
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 869
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_7

    const-string v0, "out of service."

    .line 870
    invoke-static {v8, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 872
    iput-boolean v3, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 873
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 874
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 877
    :cond_7
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 882
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v1, :cond_9

    const/16 v0, 0x14

    if-ne v1, v0, :cond_9

    .line 884
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget v4, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 886
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Reset notifiedImsNotAvailable: operator [%s] => [%s], network [%s] => [%s]"

    .line 884
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 887
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 891
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_a

    return-void

    .line 896
    :cond_a
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    invoke-virtual {p0, p2, v1, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 898
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "onNetworkEventChanged: tryRegister by phoneID"

    .line 899
    invoke-static {v8, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 900
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_3

    .line 902
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_c

    .line 903
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "onNetworkEventChanged: tryRegister"

    .line 904
    invoke-static {v8, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 908
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_d

    .line 909
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_4
    return-void
.end method

.method protected onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7

    const-string v0, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string/jumbo p0, "task is null. Skip pdnConnected event"

    .line 359
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 364
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 371
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needPendingPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 376
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 378
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 380
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 381
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    if-nez v3, :cond_5

    const-string p0, "onPdnConnected: Emergency task already removed"

    .line 388
    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 393
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 394
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 395
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 396
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 398
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 399
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPdnConnected: need emergency Registration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    xor-int/lit8 v0, v3, 0x1

    .line 401
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->removeE911RegiTimer()V

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    .line 404
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 408
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnected()V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    :cond_7
    return-void
.end method

.method protected onPdnConnecting(II)V
    .locals 0

    .line 351
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda0;-><init>()V

    .line 352
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;-><init>()V

    .line 353
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 354
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 9

    .line 419
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 421
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    .line 427
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 430
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_7

    const-string v1, "pdn disconnected - REGISTERED or REGISTERING"

    .line 431
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 432
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    if-ne v1, v3, :cond_2

    .line 433
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 435
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_2

    .line 444
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 447
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_8

    const-string v0, "pdn disconnected - EMERGENCY"

    .line 448
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 449
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 452
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto/16 :goto_2

    .line 454
    :cond_8
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_a

    const-string v0, "PDN disconnected received in DEREGISTERING state, send DEREGISTER_TIMEOUT event"

    .line 455
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 460
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 462
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 463
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v0, v1, :cond_b

    goto :goto_0

    :cond_b
    move v8, v7

    .line 464
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 465
    :cond_c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    if-eqz v8, :cond_f

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 466
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 467
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 468
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_11

    .line 469
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 472
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 473
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 476
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_12

    .line 482
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 486
    :cond_12
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 487
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 491
    :cond_13
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->resetTaskOnPdnDisconnected()V

    .line 492
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 493
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_14

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 495
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 496
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    .line 498
    :cond_14
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 501
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x88

    invoke-virtual {p0, v1, p1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onPdnFailed(III)V
    .locals 2

    .line 704
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda5;-><init>()V

    .line 705
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/NetworkEventController;III)V

    .line 706
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 730
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 731
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    .line 732
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p2, :cond_0

    .line 733
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 734
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_0
    return-void
.end method

.method onRetryTimeExpired(I)V
    .locals 4

    .line 684
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 687
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 692
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    .line 693
    iput-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    :cond_1
    const-string v2, "RegiMgr-NetEvtCtr"

    const-string v3, "RetrySetupEventReceiver: release throttle pdn fail"

    .line 696
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 698
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method onVoicePreferredChanged(I)V
    .locals 5

    const-string v0, "onVoicePreferredChanged:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1555
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "VolteServiceModule is not create yet so retry after 3 seconds"

    .line 1557
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1562
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 1563
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1564
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    .line 1565
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType()I

    move-result v3

    if-eqz v0, :cond_1

    .line 1568
    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v2

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "W2L available : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xd

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_2

    const-string p0, "EpdgEventReceiver, waiting for W2L HO event w/o re-regi"

    .line 1572
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1575
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_VOICEPREFERENCE_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result v0

    .line 637
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 638
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 640
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 645
    :cond_1
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-nez v0, :cond_3

    .line 646
    iget-boolean v0, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel ongoing PDN in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 656
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 657
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 658
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v3, "pdn type has been changed, reconnect."

    invoke-static {v5, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 660
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 661
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 664
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconnectPdn startTimsTimer rcs pdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "InternetPdnRequest"

    if-ne v0, v2, :cond_4

    .line 668
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 671
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 674
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 675
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p0

    if-nez p0, :cond_6

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 677
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-string p1, "ImsPdnRequst"

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setNwChanged(Z)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method triggerOmadmConfig(I)V
    .locals 5

    const-string v0, ""

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOmadmConfig<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> - mOmadmState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v1, v2, :cond_3

    .line 767
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 768
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 769
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDmConfigTimeout(ILjava/lang/String;)V

    .line 770
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 771
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_0

    .line 772
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 773
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 775
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    const/4 v3, -0x1

    .line 776
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    .line 777
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 779
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address"

    .line 780
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/Address"

    .line 781
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/Address"

    .line 782
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/Address"

    .line 783
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/Address"

    .line 784
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/Address"

    .line 785
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType"

    .line 786
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/AddressType"

    .line 787
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/AddressType"

    .line 788
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/AddressType"

    .line 789
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/AddressType"

    .line 790
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/AddressType"

    .line 791
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INTERNAL_KEY_PROCESS_NAME"

    const-string v3, "com.sec.imsservice"

    .line 792
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 795
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerOmadmConfig : update failure - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 801
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    :cond_3
    return-void
.end method

.method updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 5

    .line 1262
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1263
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 1268
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1269
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1274
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_2

    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq p2, p3, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    or-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1278
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x87

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, 0x1d8a8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    :cond_3
    return v1
.end method

.method updateRat(II)V
    .locals 8

    .line 554
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 556
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 558
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 559
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V

    .line 562
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 565
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 566
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 567
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 568
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    .line 569
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1392
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_enable_in_roaming"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz p2, :cond_4

    .line 1393
    iget-boolean p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    .line 1394
    iget-boolean p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/16 v1, 0x12

    if-ne p2, v0, :cond_0

    iget p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq p2, p4, :cond_4

    if-eq p4, v1, :cond_0

    if-ne p2, v1, :cond_4

    .line 1397
    :cond_0
    iget p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/4 p3, 0x0

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p3

    .line 1400
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1402
    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    :cond_4
    return-void
.end method
