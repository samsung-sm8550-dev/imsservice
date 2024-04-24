.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
.super Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.source "VolteServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public static synthetic $r8$lambda$4G9FWqM3tY9Zt96Yi4_Rn1GlvCY(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleMessage$2(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KVpR_uiBemnKzH3mJ8hvGg3DHw(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleIdcEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QG24M-D1CCkFIGn4_vOGmPWeKuA(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleMessage$1(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 0

    .line 118
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V

    return-void
.end method

.method private checkIdcNegotiated(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1354
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1355
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IDC] checkIdcNegotiated IdcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne p0, v0, :cond_0

    const-string p0, "NO_DATA"

    .line 1357
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendNegotiatedLocalSdp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getEmergencyUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    .line 1014
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xf

    .line 1017
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 5

    .line 493
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 494
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->disconnectToSve()V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 501
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleDeregistered(Landroid/content/Context;IILcom/sec/internal/constants/Mno;)V

    .line 504
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    const-string v2, " with handle "

    if-eqz v1, :cond_4

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregistered emergency profile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Deregistered reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 510
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x646

    if-eq p2, v1, :cond_1

    const-string p1, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200 nor 1606"

    .line 512
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void

    .line 518
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 519
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p2

    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    const-string p0, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    .line 520
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 523
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    :cond_3
    return-void

    .line 527
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregistered from VOLTE service. reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deregistered reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 534
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 535
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p2

    if-lez p2, :cond_5

    .line 536
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 537
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 539
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 541
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_6
    return-void
.end method

.method private handleDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 457
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 459
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeregistering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 463
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const-string p0, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    .line 465
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 470
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 472
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 478
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_2
    return-void
.end method

.method private handleIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 5

    .line 1335
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1337
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object v0

    const-string/jumbo v1, "sdp"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1338
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->SESSIONPROGRESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1341
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ESTABLISHED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v3, v4, :cond_1

    .line 1342
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1345
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IDC] handleIdcEvent existSdp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needToNotify="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setBootstrapRemoteAnswerSdp(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 1348
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$handleIdcEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 1348
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->checkIdcNegotiated(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1539
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    return-void
.end method

.method private synthetic lambda$handleMessage$2(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 1555
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method private onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V
    .locals 6

    .line 1430
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call End - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") Reason("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), Error("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1439
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallEnded: callType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isEmergency: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2

    if-eqz v1, :cond_2

    .line 1441
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isEpdnRequestPending(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "EPDN request is still pending, need to stop EPDN to avoid retry"

    .line 1442
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    .line 1448
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1451
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1452
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1454
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    .line 1453
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1456
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 1458
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v4, 0x0

    .line 1456
    invoke-interface {p2, v0, v4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 1462
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1463
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result p2

    if-nez p2, :cond_4

    .line 1464
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1467
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1468
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p2

    const/16 v0, 0x1777

    if-ne p2, v0, :cond_7

    .line 1469
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p2

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call end due to call pull from SD to PD. bound session id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_6

    .line 1473
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1475
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRelayChTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Relay ch already terminated. Start audio here"

    .line 1476
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto :goto_2

    :cond_5
    const-string v0, "Relay ch not terminated yet. Delay start audio"

    .line 1479
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 1480
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    const-string p0, "Ext session is CS"

    .line 1484
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1492
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p0

    if-nez p0, :cond_8

    .line 1493
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->stopP2p()V

    :cond_8
    return-void
.end method

.method private onCallStatusChange(II)V
    .locals 2

    .line 829
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 832
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 837
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_2

    .line 844
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateTelephonyCallStatus(II)V

    .line 846
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 848
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateTelephonyCallStatus(II)V

    .line 850
    :cond_3
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->updateTelephonyCallStatus(II)V

    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 3

    .line 1713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1714
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BikeMode Active - Dtmf Val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.DTMF_RX_DIGI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "dtmf_digit"

    .line 1717
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.bikemode"

    .line 1718
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1721
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Bike Mode is disabled discarding event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onEcbmStateChanged(IZ)V
    .locals 3

    .line 916
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEcbmStateChanged: ecbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " oldEcbm["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v1, v0, p1

    .line 918
    aput-boolean p2, v0, p1

    .line 919
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x3000001b

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 921
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    .line 927
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    :cond_0
    return-void
.end method

.method private onEventSimReady(I)V
    .locals 5

    .line 180
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventSimReady<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerAllowedNetworkTypesListener(I)V

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 185
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 186
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    .line 187
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 188
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EcholocateBroadcaster: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->start()V

    goto :goto_2

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->stop()V

    .line 195
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-nez v0, :cond_5

    const-string/jumbo v0, "support_ciq"

    .line 196
    invoke-static {p1, v0, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    new-instance v0, Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_3

    .line 203
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    :cond_5
    :goto_3
    return-void
.end method

.method private onIQIServiceStateChanged(IZ)V
    .locals 3

    .line 1833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXqServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 1835
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1837
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p2}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_1

    .line 1839
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {p2}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    .line 1841
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz p2, :cond_2

    .line 1842
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateXqEnable(IZ)V

    :cond_2
    return-void
.end method

.method private onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 3

    .line 1262
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1305
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    goto :goto_0

    .line 1300
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->resetPeerProfileStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1301
    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->requestQuantumPeerProfileStatus(ZZ)V

    goto :goto_0

    .line 1289
    :pswitch_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne p1, v0, :cond_0

    .line 1290
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1292
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    goto :goto_1

    .line 1277
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 1269
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1270
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    goto :goto_0

    .line 1264
    :pswitch_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateNrSaModeOnStart(II)V

    .line 1265
    invoke-virtual {p2, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->requestQuantumPeerProfileStatus(ZZ)V

    :goto_0
    move v1, v2

    :cond_0
    :goto_1
    :pswitch_6
    if-eqz v1, :cond_1

    .line 1313
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 6

    if-nez p1, :cond_0

    .line 855
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignoring dialog list is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 860
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 861
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 862
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 863
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    .line 864
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/Dialog;

    .line 865
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 867
    invoke-virtual {v3, v4}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 868
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exclusive call can\'t pulling"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 871
    invoke-virtual {v3, v4}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 872
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Held call can\'t pulling"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_2
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 874
    invoke-virtual {v3, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 875
    invoke-virtual {v3, v1}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 876
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Downgraded video call can pulling and change callType to Voice"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 878
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 880
    invoke-virtual {v3, v4}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 881
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Backgrounded Video call can\'t pulling"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 882
    :cond_4
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "mmtel-video"

    .line 883
    invoke-virtual {v0, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 885
    invoke-virtual {v3, v4}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 886
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "video call can\'t pulling with video feature"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_5
    invoke-virtual {v3, v1}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    goto :goto_0

    .line 893
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 894
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Ignore DialogEvent"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 896
    :cond_7
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 897
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object p1

    .line 898
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 899
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v0

    if-nez v0, :cond_8

    .line 900
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not notify dialog event until P2P discovery done"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->setNeedToNotifyAfterP2pDiscovery(Z)V

    move v1, v4

    .line 907
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    aput-object p1, v0, v2

    if-eqz v1, :cond_9

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 910
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 911
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Notified Dialog Event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private onReleaseWfcBeforeHO(I)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onReleaseWfcBeforeHO(I)V

    .line 1216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method private onScreenOnOffChanged(I)V
    .locals 3

    .line 932
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenOnOffChanged: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz v0, :cond_0

    .line 935
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateScreenOnOff(II)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2

    monitor-enter p0

    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onUpdateSSACInfo(ILandroid/telephony/BarringInfo;)V
    .locals 1

    .line 953
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;-><init>(Landroid/telephony/BarringInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V

    return-void
.end method

.method private resetPeerProfileStatus(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 1

    .line 1318
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1321
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1322
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p2, "history info is null, Quantum Encryption disabled"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->disableQuantumEncryption()V

    return-void

    .line 1326
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Quantum Encrypted Call is forwarded"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setPeerProfileStatus(I)V

    .line 1328
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setEncryptStatus(I)V

    .line 1329
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setQtSessionId(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setSessionKey(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setRemoteTelNum(Ljava/lang/String;)V

    return-void
.end method

.method private resetQuantumAuthStatus(I)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1952
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->resetAuthStatus()V

    return-void
.end method

.method private sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1924
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.imsservice.handler.secims.audio_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "IS_ENDCALL"

    .line 1925
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "CODEC_NAME"

    .line 1926
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "BIT_RATE"

    .line 1927
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private tryDisconnect(II)V
    .locals 7

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 561
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryDisconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 564
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 565
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const-string/jumbo v5, "to do nothing"

    if-eqz v4, :cond_0

    .line 566
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 568
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 574
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 579
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo p0, "to do nothing - Continue Wifi call"

    .line 580
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 584
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isMultiPdnRat(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_3

    const-string p1, "isSuspended(), waited enough..."

    .line 587
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "isSuspended(), retrying..."

    .line 589
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v0, p1, 0x2

    const/16 v1, 0x9

    .line 590
    invoke-virtual {p0, v1, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 595
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    .line 596
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V

    :cond_5
    return-void
.end method

.method private updateFeature(I)V
    .locals 9

    .line 250
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, p1

    .line 253
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtel(I)V

    .line 254
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtelVideo(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getVBCAuthValue(ILandroid/content/Context;)I

    move-result v2

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composerAuthVal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vbcAuthVal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    :goto_1
    if-ne v2, v6, :cond_2

    move v5, v6

    .line 269
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "add MMTEL Composer feature"

    const-string v7, "mmtel-call-composer"

    const-string v8, "do not add MMTEL Composer feature"

    if-eqz v2, :cond_5

    if-nez v1, :cond_3

    if-eqz v5, :cond_4

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    goto :goto_2

    .line 276
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 278
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    goto :goto_2

    .line 283
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void
.end method

.method private updateFeatureMmtel(I)V
    .locals 7

    .line 289
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 290
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    .line 292
    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3, v4, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string v3, "mmtel"

    invoke-static {v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 295
    invoke-static {v2, v3, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 299
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 313
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 319
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_5
    return-void
.end method

.method private updateFeatureMmtelVideo(I)V
    .locals 5

    .line 325
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVolteSettingEnabled()Z

    move-result v0

    .line 329
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus()Z

    move-result v1

    .line 330
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isLTEDataModeEnabled(I)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string v1, "mmtel-video"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_1
    return-void
.end method

.method private updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    if-nez p0, :cond_0

    .line 946
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mSsacManager was not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public consultativeTransferCall(II)V
    .locals 3

    .line 1097
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1098
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    const-string v2, ") is invalid"

    if-nez v0, :cond_0

    .line 1100
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fgCallId("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 1104
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bgCallId("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1107
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    .line 1108
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    .line 1109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->consultativeTransferCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 607
    new-instance p0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 608
    invoke-virtual {p0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    return-object p0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 0

    .line 711
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0

    .line 747
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1

    .line 743
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public enableCallWaitingRule(Z)V
    .locals 0

    .line 1062
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    return-void
.end method

.method public getActiveImpu()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1203
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getActiveImpu(I)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public getActiveImpu(I)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 1207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1211
    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAutomaticMode()Z
    .locals 1

    .line 661
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getAutomaticMode(I)Z

    move-result p0

    return p0
.end method

.method public getAutomaticMode(I)Z
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 0

    .line 1888
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    return-object p0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExtMoCall()Z
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getExtMoCall()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getIdcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;
    .locals 0

    .line 1898
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    return-object p0
.end method

.method public bridge synthetic getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getIdcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    move-result-object p0

    return-object p0
.end method

.method public getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 16

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v1

    .line 1850
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1851
    new-instance v15, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    .line 1852
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    .line 1853
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v6

    .line 1854
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedAtEstablish()Z

    move-result v7

    const/4 v3, 0x1

    .line 1855
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v8

    const/4 v3, 0x2

    .line 1856
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v9

    const/16 v3, 0x8

    .line 1857
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v10

    .line 1858
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v11

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    .line 1859
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v13

    .line 1860
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v14

    .line 1861
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    move-object v3, v15

    move-object/from16 p0, v1

    move-object v1, v15

    move v15, v2

    invoke-direct/range {v3 .. v15}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1862
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 1866
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    return-object v0
.end method

.method public getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .locals 0

    .line 1893
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    return-object p0
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    return-object p0
.end method

.method public getIncomingSessionPhoneIdForCmc()I
    .locals 0

    .line 1920
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingSessionPhoneIdForCmc()I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 0

    .line 1080
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    .line 1802
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1804
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNormalizedUri: FATAL - no UriGenerator found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1808
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1810
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNormalizedUri: invalid msisdn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1814
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_2

    .line 1816
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNormalizedUri: not registered!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1820
    :cond_2
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    .line 1822
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    .line 1823
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 1824
    invoke-virtual {v2, p2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1825
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getParticipantIdForMerge(II)I
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getParticipantIdForMerge(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 688
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingSession: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 692
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 696
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getRegInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 619
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 620
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegInfo: found regId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRttMode()I
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget p0, v0, p0

    return p0
.end method

.method public getRttMode(I)I
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 4

    const-string p0, "cdpn"

    const-string v0, "datachannel"

    const-string v1, "mmtel"

    const-string v2, "mmtel-video"

    const-string v3, "mmtel-call-composer"

    .line 159
    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSignalLevel()I
    .locals 1

    .line 1785
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getSignalLevel(I)I
    .locals 0

    .line 1789
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTtyMode()I
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget p0, v0, p0

    return p0
.end method

.method public getTtyMode(I)I
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getVoWIFIEmergencyCallRat(I)I
    .locals 2

    .line 1870
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object p0

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

    .line 1871
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1874
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoWIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1526
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 1528
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1529
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolteServiceModule not ready, retransmitting event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1532
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1534
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1694
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1695
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onQuantumSecurityStatusEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;)V

    goto/16 :goto_3

    .line 1685
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/BarringInfo;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onUpdateSSACInfo(ILandroid/telephony/BarringInfo;)V

    goto/16 :goto_3

    .line 1592
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onUssdEndByCS(I)V

    goto/16 :goto_3

    .line 1689
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay audio engine timer expired. Start now. phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto/16 :goto_3

    .line 1670
    :pswitch_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Removed Call State set to Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1672
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    .line 1673
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerMissedSmsReceiver(ZI)V

    .line 1674
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->resetQuantumAuthStatus(I)V

    goto/16 :goto_3

    .line 1678
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1679
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1680
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEventSimReady(I)V

    .line 1681
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerMissedSmsReceiver(ZI)V

    goto/16 :goto_3

    .line 1666
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getActiveDataPhoneId()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onIQIServiceStateChanged(IZ)V

    goto/16 :goto_3

    .line 1661
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    goto/16 :goto_3

    .line 1653
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onActiveDataSubscriptionChanged()V

    goto/16 :goto_3

    .line 1648
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V

    goto/16 :goto_3

    .line 1643
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1644
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    goto/16 :goto_3

    .line 1639
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onScreenOnOffChanged(I)V

    goto/16 :goto_3

    .line 1568
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1569
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    goto/16 :goto_3

    .line 1635
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onConfigUpdated(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1657
    :pswitch_f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onReleaseWfcBeforeHO(I)V

    goto/16 :goto_3

    .line 1631
    :pswitch_10
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdnSetupFail(I)V

    goto/16 :goto_3

    .line 1626
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1627
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    goto/16 :goto_3

    .line 1563
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1564
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    goto/16 :goto_3

    .line 1604
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1605
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1606
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    goto/16 :goto_3

    .line 1608
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    goto/16 :goto_3

    .line 1622
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    goto/16 :goto_3

    .line 1618
    :pswitch_15
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onPSBarred(Z)V

    goto/16 :goto_3

    .line 1614
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistering(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_3

    .line 1600
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    goto/16 :goto_3

    .line 1596
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    goto :goto_3

    .line 1588
    :pswitch_19
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEndByCS(I)V

    goto :goto_3

    .line 1584
    :pswitch_1a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->tryDisconnect(II)V

    goto :goto_3

    .line 1579
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1580
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    goto :goto_3

    .line 1573
    :pswitch_1c
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1574
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEcbmStateChanged(IZ)V

    goto :goto_3

    .line 1559
    :pswitch_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    goto :goto_3

    .line 1543
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1544
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    goto :goto_3

    .line 1548
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1554
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1555
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1536
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1538
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    .line 1539
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasPendingCall(I)Z
    .locals 0

    .line 1933
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasPendingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasQecInCall()Z
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasQecInCall()Z

    move-result p0

    return p0
.end method

.method public isCallBarredBySSAC(II)Z
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1069
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->isCallBarred(II)Z

    move-result p0

    .line 1070
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallBarredBySSAC["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: result for call type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isProhibited(I)Z
    .locals 0

    .line 1363
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .locals 0

    .line 1025
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    return p0
.end method

.method public isRttCall(I)Z
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z
    .locals 1

    const/16 v0, 0xa

    .line 1732
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result p0

    return p0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z
    .locals 6

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 1738
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SipError was null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1743
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isSilentRedialEnabled was false!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1747
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1749
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 1750
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string v1, "all_volte_retry_error_code_list"

    const/4 v2, 0x0

    .line 1756
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1758
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_volte_retry_error_code_list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1758
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1763
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "video_volte_retry_error_code_list"

    .line 1765
    invoke-static {p1, p2, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video_volte_retry_error_code_list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1767
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p3

    invoke-virtual {v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v1, p4

    .line 1775
    :catch_1
    :cond_3
    :goto_1
    sget-object p2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    if-eq p0, p1, :cond_4

    .line 1776
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "do not volte retry under eb not supported N/W"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move p4, v1

    :goto_2
    return p4
.end method

.method public isVolteServiceStatus()Z
    .locals 1

    .line 210
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0
.end method

.method public isVolteServiceStatus(I)Z
    .locals 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 218
    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 222
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolteServiceStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVolteSupportECT()Z
    .locals 1

    .line 228
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0
.end method

.method public isVolteSupportECT(I)Z
    .locals 2

    .line 234
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 239
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Has emergency call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 245
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVolteSupportECT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyEpsFallbackResult(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1938
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setIsLteRetrying(IZ)V

    .line 1940
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endcallBeforeRetry(II)V

    return-void
.end method

.method public notifyOnCmcRecordingEvent(IIII)V
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnCmcRecordingEvent(III)V

    .line 1124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->forwardCmcRecordingEventToSD(IIII)V

    return-void
.end method

.method public notifyOnCmcRelayEvent(III)V
    .locals 3

    .line 1129
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnCmcRelayEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 p1, 0x23

    .line 1132
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 1135
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    goto :goto_0

    :cond_0
    if-le p2, v1, :cond_2

    if-le p3, v1, :cond_2

    .line 1138
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1140
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setRelayChTerminated(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-le p2, v1, :cond_2

    if-le p3, v1, :cond_2

    .line 1145
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "notifyOnCmcRelayEvent intSession.setRelayChTerminated(false)"

    .line 1147
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setRelayChTerminated(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyOnPulling(II)V
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnPulling(II)V

    return-void
.end method

.method public onCallEnded(III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1372
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallEnded["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: sessionId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 1374
    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_0

    .line 1375
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1376
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x3a980

    .line 1377
    invoke-virtual {v0, v1, v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    :cond_0
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    const/16 v6, 0x38f

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const-string v3, "Stack Return -1 release all session in F/W layer"

    .line 1381
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllSession(I)V

    .line 1386
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1388
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1391
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1392
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyDSDAVideoCapa(I)V

    .line 1394
    :cond_2
    invoke-direct {v0, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V

    .line 1395
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 1397
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1399
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    const/4 v3, 0x1

    move v12, v3

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    .line 1400
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object v3

    new-instance v15, Lcom/voltecrypt/service/SxHangUpEntity;

    .line 1401
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getLocalPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getRemoteTelNum()Ljava/lang/String;

    move-result-object v9

    .line 1402
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v10

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getQtSessionId()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const-string/jumbo v14, "success"

    .line 1403
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    move-object v7, v15

    move-object v6, v15

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/voltecrypt/service/SxHangUpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V

    .line 1407
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "All calls are release before HO, trigger HO to EPDG"

    .line 1408
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1410
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/epdg/EpdgManager;->triggerHOAfterReleaseCall(I)Z

    .line 1412
    :cond_5
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 1415
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1417
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1418
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_7

    .line 1421
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->startCameraForActiveExcept(I)V

    .line 1426
    :cond_7
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEnded(I)V

    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 3

    .line 1499
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantAdded: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1501
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    const/4 v1, 0x0

    .line 1503
    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1504
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 3

    .line 1509
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantRemoved: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1511
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    const/4 v1, 0x0

    .line 1513
    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1514
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3

    .line 1704
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VOLTE_ENABLED"

    .line 1706
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LVC_ENABLED"

    .line 1707
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1708
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :cond_1
    return-void
.end method

.method public onConfigured(I)V
    .locals 2

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method protected onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 4

    .line 1155
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1157
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedicatedBearerEvent: unknown session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1160
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setDedicatedBearerState(II)V

    .line 1162
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDedicatedBearerEvent: received for session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,bearer state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,qci : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1162
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 484
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000000d

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aput p2, v0, v1

    const/16 v0, 0xc

    .line 488
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 489
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 450
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    const/16 v0, 0xd

    .line 452
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 7

    .line 1221
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1227
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1228
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1229
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    aput-boolean v2, v3, v4

    .line 1230
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsCallEvent: Receive 503 Outage Error session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1230
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1232
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    :cond_2
    if-nez v0, :cond_4

    .line 1234
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1235
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1236
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onImsCallEvent: Notify 708 to RegiGvn even if session null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "mmtel"

    .line 1240
    invoke-interface {p0, p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_3
    return-void

    .line 1246
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1247
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioBitRate()Ljava/lang/String;

    move-result-object v4

    .line 1248
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v5, v6, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 1247
    :cond_6
    :goto_2
    invoke-direct {p0, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    if-nez v0, :cond_8

    .line 1252
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsCallEvent: unknown session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1255
    :cond_8
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsCallEvent: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1255
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 3

    .line 547
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 549
    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    .line 551
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000009

    .line 550
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 554
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x64

    .line 555
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onQuantumSecurityStatusEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;)V
    .locals 4

    .line 1169
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1171
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuantumSecurityStatusEvent: unknown session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1175
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQuantumSecurityStatusEvent: received for sessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", qtSessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getQtSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->FALLBACK_TO_NORMAL_CALL:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    if-ne v2, v3, :cond_1

    const/4 p1, 0x4

    .line 1179
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyQuantumEncryptionStatus(I)V

    .line 1180
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    move-result-object p0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    if-ne p0, v2, :cond_2

    const/4 p0, 0x3

    .line 1182
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyQuantumEncryptionStatus(I)V

    goto :goto_0

    .line 1183
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    move-result-object p0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;->NOTIFY_SESSION_ID:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    if-ne p0, v2, :cond_3

    .line 1184
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getQtSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "QtSessionId notified by voice engine. Request session key"

    .line 1185
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->getQtSessionId()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    const/16 v1, 0x191

    const-string v2, "NOTIFY_SESSION_ID"

    .line 1186
    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateQuantumPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 10

    if-eqz p1, :cond_9

    .line 380
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x3000000c

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 388
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    aput v5, v4, v1

    .line 389
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 391
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 392
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Registered Feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 394
    sget-object p1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v4, p1, :cond_1

    const-wide/32 v2, 0x3a980

    .line 395
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    :cond_1
    return-void

    .line 400
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const-string v5, "allow_release_wfc_before_ho"

    .line 402
    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v5

    .line 403
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is allow release call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 404
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lcom/sec/epdg/EpdgManager;->setReleaseCallBeforeHO(IZ)Z

    .line 407
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 408
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    if-eq v2, v5, :cond_5

    .line 410
    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 411
    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    if-eqz v2, :cond_4

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    if-eq v5, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEmergencyCall(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 413
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 415
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, v1, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V

    .line 418
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->terminateMoWfcWhenWfcSettingOff(I)V

    .line 420
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered to VOLTE service. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TTYMode "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v8, v5, v1

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    if-eq v3, v7, :cond_6

    .line 426
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 427
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v4, v4, v1

    invoke-interface {v3, v1, v6, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 430
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->connectToSve(I)V

    :cond_7
    const-string v0, "mmtel"

    .line 434
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 435
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_8
    const-string v0, "Registration Without MMTEL has DialogList notify empty dialog"

    .line 438
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    .line 441
    :goto_0
    invoke-virtual {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setIsLteRetrying(IZ)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    return-void
.end method

.method public declared-synchronized onSendRttSessionModifyRequest(IZ)V
    .locals 3

    monitor-enter p0

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 810
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 813
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    .line 814
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyRequest(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSendRttSessionModifyResponse(IZZ)V
    .locals 3

    monitor-enter p0

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 821
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-ne p2, p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 824
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    .line 825
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyResponse(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 1

    .line 350
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceSwitched"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method public onSimReady(I)V
    .locals 0

    .line 176
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onSimReady:"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V
    .locals 0

    .line 1945
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1520
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateGeolocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onUpdateGeolocation()V

    return-void
.end method

.method public onVoWiFiSwitched(I)V
    .locals 2

    .line 344
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onVoWiFiSwitched:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    return-void
.end method

.method public pushCall(ILjava/lang/String;)V
    .locals 3

    .line 1085
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushCall: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1088
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

    .line 1091
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1

    .line 735
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 0

    .line 707
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 0

    .line 1883
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    return-void
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .locals 2

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getAlertingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 1053
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendDtmfEvent(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1055
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendDtmfEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDtmfEvent() no valid alerting or incoming call session"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendHandOffEvent(IIIIJ)V
    .locals 8

    .line 1903
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEPSFBEvent: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dRat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1906
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1907
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1909
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1911
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleTmoEcholocatePSHO(IIIIJ)V

    goto :goto_0

    .line 1913
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleTmoEcholocateEPSFB(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 803
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized sendRttSessionModifyRequest(IZ)I
    .locals 1

    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyRequest(IZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendRttSessionModifyResponse(IZ)V
    .locals 1

    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyResponse(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActiveImpu(ILjava/lang/String;)V
    .locals 1

    .line 1194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    const/4 p2, 0x0

    aput-object p2, p0, p1

    return-void

    .line 1199
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public setAutomaticMode(IZ)V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    aget-boolean v1, v0, p1

    .line 649
    aput-boolean p2, v0, p1

    .line 652
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutomaticMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p2, :cond_0

    const-string/jumbo p0, "setAutomaticMode: ignored"

    .line 654
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 657
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setOutOfService(ZI)V
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setOutOfService(ZI)V

    return-void
.end method

.method public setRttMode(I)V
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 790
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 2

    .line 761
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUiTTYMode: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", do nothing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 762
    iget-object p0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 764
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 766
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUpTest(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;)V
    .locals 2

    .line 127
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpTest:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForIncomingCallEvent(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDialogEvent(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRtpLossRateNoti(Landroid/os/Handler;)V

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 136
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    .line 137
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 138
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 140
    invoke-interface {p3, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 p3, 0x2

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 p3, 0x3

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 p3, 0x8

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 p3, 0x12

    invoke-interface {p1, p0, p3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1042
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVideoCrtAudio() no valid incoming call session"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1045
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method protected startEpdnDisconnectTimer(IJ)V
    .locals 3

    .line 355
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->stopEpdnDisconnectTimer(I)V

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRetryTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, -0x1

    .line 359
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected stopEpdnDisconnectTimer(I)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEpdnDisconnectTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transferCall(ILjava/lang/String;Ljava/lang/String;[Lcom/sec/ims/DialogEvent;)V

    return-void
.end method

.method public unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public updateAudioInterface(II)V
    .locals 7

    .line 963
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface, phoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->getAudioMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-nez v3, :cond_3

    .line 971
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    :goto_0
    if-gt v4, v1, :cond_3

    .line 974
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, p1, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 968
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    if-nez v3, :cond_4

    .line 983
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "There is no IMS Registration take Emergency Regi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_8

    const/4 v4, 0x4

    if-ne p2, v4, :cond_7

    .line 990
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession(I)Ljava/util/List;

    move-result-object p2

    .line 991
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 992
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v6, :cond_5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_5

    .line 993
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getEmergencyUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    .line 994
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Emergency session. Invoke updateAudioInterface() with UserAgent"

    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {p2, v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    move v2, v1

    :cond_6
    if-nez v2, :cond_8

    .line 1001
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;)V

    goto :goto_3

    .line 1004
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;)V

    :cond_8
    :goto_3
    const-string p1, "STOP"

    .line 1008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1009
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->forceNotifyCurrentCodec()V

    :cond_9
    return-void
.end method

.method public updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    return-void
.end method

.method public updateSSACInfo(IIIII)V
    .locals 1

    .line 941
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;-><init>(IIII)V

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V

    return-void
.end method
