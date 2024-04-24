.class public Lcom/sec/internal/ims/core/UserEventController;
.super Ljava/lang/Object;
.source "UserEventController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-UsrEvtCtr"


# instance fields
.field mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field mContext:Landroid/content/Context;

.field protected mCurrentUserId:I

.field protected mIsDeviceShutdown:Z

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/helper/SimpleEventLog;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 65
    iput-object p3, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 66
    iput-object p4, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    .line 67
    iput-object p5, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 69
    iput-object p6, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 71
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start with User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-UsrEvtCtr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOpMode(IIILcom/sec/internal/constants/Mno;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-ne p3, v2, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eq p3, v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    .line 583
    :goto_3
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p4

    const-string v3, "RegiMgr-UsrEvtCtr"

    if-eqz p4, :cond_5

    const/4 p4, -0x2

    if-eq p2, p4, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    const-string p2, "Changed rcs_user_setting by network. Skip change op mode."

    .line 586
    invoke-static {v3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 594
    iget-object p2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    const-string p4, "info/tc_popup_user_accept"

    invoke-static {p4, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 598
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string p2, "Error while parsing integer in getIntValue() - NumberFormatException"

    .line 600
    invoke-static {v3, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    const/4 p2, -0x1

    .line 603
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, p3, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->changeOpMode(ZII)V

    :cond_7
    return-void
.end method

.method private updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V
    .locals 6

    .line 656
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const-string p0, "RegiMgr-UsrEvtCtr"

    const-string p1, "RCS_TURNING_OFF: Ignore RCS disable for SKT until server responds"

    .line 658
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 663
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 665
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 666
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    const-string v2, "RCS USER SWITCH OFF"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-ne p2, v4, :cond_2

    .line 672
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_RCSUSERSETTING_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_5

    .line 681
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V
    .locals 6

    .line 609
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_7

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "RegiMgr-UsrEvtCtr"

    if-nez p2, :cond_6

    .line 622
    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {p2, v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p2, "VoLTE turned off, DeRegister"

    .line 626
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 629
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 630
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 634
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "volte setting turned off"

    .line 635
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v2, 0x49

    .line 636
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 637
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    .line 638
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    .line 639
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 640
    iget-object v5, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    .line 641
    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VoLTE turned off, no need to keep pdn."

    .line 642
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 644
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    const-string p2, "VoLTE switch changed, updateRegistration"

    .line 623
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_VOLTECALLSTATE_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    return p0
.end method

.method protected onChatbotAgreementChanged(I)V
    .locals 3

    const-string v0, "RegiMgr-UsrEvtCtr"

    const-string v1, "onChatbotAgreementChanged"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 125
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "chatbot-communication"

    .line 127
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "chatbot agreement changed"

    .line 129
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->CHATBOT_AGREEMENT_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDataUsageLimitReached(ZI)V
    .locals 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataUsageLimitReached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setDataUsageExceed(Z)V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 104
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data limited exceed"

    .line 105
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataUsageLimitReached: force update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->DATAUSAGE_LIMIT_REACHED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->DATAUSAGE_LIMIT_REACHED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method onEcVbcSettingChanged(I)V
    .locals 5

    .line 469
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 470
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RegiMgr-UsrEvtCtr"

    const-string/jumbo v3, "set reason as EcVbc Setting Changed"

    .line 471
    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "EcVbc Setting Changed"

    .line 472
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_ECVBC_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFlightModeChanged(Z)V
    .locals 9

    const-string v0, "RegiMgr-UsrEvtCtr"

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    move v2, v1

    .line 535
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 536
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 538
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v6, 0x1

    .line 540
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v7, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v7, "ConfigModule - NullPointerException"

    .line 542
    invoke-static {v0, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v7, "FlightMode On"

    .line 544
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 545
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v7, v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 546
    iget-object v7, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 547
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_3

    .line 548
    :cond_0
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v7, v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 549
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_4

    .line 550
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_3

    .line 552
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v7, v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 554
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->isDelayDeRegForNonADSOnFlightModeChanged(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "QCT , non-ads send de-reg later"

    .line 555
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->setNonADSDeRegRequired(Z)V

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v6

    .line 560
    :cond_4
    :goto_3
    iput-boolean v1, v5, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 561
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 562
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 563
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v6, "AirplaneModeOn"

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 566
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 571
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onFlightModeChanged(Z)V

    return-void
.end method

.method onLteDataNetworkModeSettingChanged(ZI)V
    .locals 1

    const-string p0, "RegiMgr-UsrEvtCtr"

    const-string v0, "onLteDataNetworkModeSettingChanged:"

    .line 523
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 529
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLteDataNetworkModeSettingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 10

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 141
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 142
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile data changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 145
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    filled-new-array {v7, v8, v9}, [Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_MOBILEDATA_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_1

    .line 149
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ims"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_MOBILEDATA_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 152
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne p1, v4, :cond_3

    .line 156
    invoke-virtual {p3, v5, p2, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    goto :goto_1

    .line 159
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_MOBILEDATA_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v6, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object p3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    if-ne p1, v4, :cond_8

    .line 167
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    if-ne v0, p2, :cond_6

    goto :goto_3

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "onMobileDataChanged: tryRegister RCS on other slot"

    .line 173
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method protected onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataPressedChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 184
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

    .line 185
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 187
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 188
    invoke-virtual {p3, v2, p2, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onRTTmodeUpdated(IZ)V
    .locals 6

    .line 372
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRTTmodeUpdated: current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RegiMgr-UsrEvtCtr"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p2, :cond_5

    .line 378
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    .line 380
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 381
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 386
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 387
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 398
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_5

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRTTmodeUpdated: isSupportRTT="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRTTmodeUpdated: force update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RTT changed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_RTTMODE_CHANGE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "RegiterTaskList is empty."

    .line 382
    invoke-static {v4, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onRcsUserSettingChanged(II)V
    .locals 9

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsUserSettingChanged: switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 291
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez p1, :cond_2

    .line 297
    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v8, :cond_3

    if-eq v0, v6, :cond_0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_3

    :cond_0
    if-eq v4, v5, :cond_1

    const/4 v8, -0x2

    if-eq v4, v8, :cond_1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": treat RCS_DISABLED(0) as RCS_TURNING_OFF(2)"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move p1, v7

    goto :goto_0

    .line 305
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": already turnned off - acs version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    .line 309
    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_3

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": RCS_TURNING_OFF(2) is not allowed set rcs_user_setting to 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "same rcs_user_setting not changed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne v0, v5, :cond_5

    if-ne p1, v6, :cond_5

    const-string v4, "Reset ACS settings : RCS user switch turned on first time."

    .line 324
    invoke-static {v1, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 328
    :cond_5
    invoke-direct {p0, p2, v0, p1, v3}, Lcom/sec/internal/ims/core/UserEventController;->updateOpMode(IIILcom/sec/internal/constants/Mno;)V

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modify internal ImsUserSetting(shared pref) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 333
    invoke-direct {p0, p2, p1, v3}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByRcsUserSettings(IILcom/sec/internal/constants/Mno;)V

    return-void
.end method

.method protected onRoamingDataChanged(ZI)V
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoamingDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 201
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 213
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 214
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "roaming data changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_ROAMINGDATA_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 219
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onRoamingSettingsChanged(II)V
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoamingSettingsChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 227
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 228
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 229
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string v1, "Roaming Setting turned off"

    .line 233
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method onShuttingDown(I)V
    .locals 7

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "powerOff :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 494
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mIsDeviceShutdown:Z

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 502
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 504
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move v3, p1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 507
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0x17

    .line 508
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    move v3, v1

    .line 511
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_3
    move v3, p1

    :cond_4
    if-eqz v3, :cond_5

    .line 517
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method onTTYmodeUpdated(IZ)V
    .locals 6

    .line 337
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTYmodeUpdated: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr-UsrEvtCtr"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eq v0, p2, :cond_5

    .line 347
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setTTYMode(Ljava/lang/Boolean;)V

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 350
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 361
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTTYmodeUpdated: isSupportCsTTY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4

    .line 363
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p2, v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_1

    .line 366
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_TTYMODE_CHANGE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method onUserSwitched()V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUserSwitched by MUM"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const v0, 0x11010005

    const-string v1, ",USER SWITCHED"

    .line 480
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 482
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

    .line 483
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v0, 0x3e8

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onVideoCallServiceSettingChanged(ZI)V
    .locals 6

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-static {v2, v3, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 259
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 261
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 262
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v4, "Video Call state changed : "

    if-ne v0, v3, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_VIDEOCALLSTATE_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 268
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 271
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "skip update registration"

    .line 272
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_VIDEOCALLSTATE_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 278
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_VIDEOCALLSTATE_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method onVolteServiceSettingChanged(ZI)V
    .locals 6

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolteServiceSettingChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-UsrEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 440
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v0, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 444
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "onVolteServiceSettingChanged: SIM is not available don\'t save setting"

    .line 445
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 449
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 450
    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-static {v3, v4, v5, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 453
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 454
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 455
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v4, :cond_3

    .line 456
    sget-object p0, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    sget-object p1, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, p1, p2, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "update eutrn param"

    .line 457
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    :cond_2
    const-string p0, "WFC is enabled. Do not modify regi status"

    .line 460
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onVolteSettingChanged()V

    goto :goto_0

    .line 465
    :cond_4
    invoke-direct {p0, p2, p1, v0}, Lcom/sec/internal/ims/core/UserEventController;->updateRegistrationByVolteServiceSettings(IZLcom/sec/internal/constants/Mno;)V

    :cond_5
    :goto_1
    return-void
.end method

.method onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 5

    const-string v0, "onVowifiServiceSettingChanged:"

    const-string v1, "RegiMgr-UsrEvtCtr"

    .line 408
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    const-string p0, "VolteServiceModule is not create yet so retry after 3 seconds"

    .line 411
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xbb8

    .line 412
    invoke-interface {p2, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVowifiSettingChanged(IJ)V

    return-void

    .line 416
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 417
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 419
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 420
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v2

    .line 422
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 423
    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v3, v4, :cond_2

    .line 424
    invoke-static {v2}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip updateRegistration under "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " roaming NW"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "VoWiFi settings changed"

    .line 427
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SETTING_VOWIFI_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 434
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/UserEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mCurrentUserId:I

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/core/UserEventController;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method
