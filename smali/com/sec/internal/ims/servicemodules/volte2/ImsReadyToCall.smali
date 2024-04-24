.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsReadyToCall.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private dbrLost_ReadyToCall(Landroid/os/Message;)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 487
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2

    .line 489
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->PRECONDITION_FAILURE:Lcom/sec/ims/util/SipError;

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    move-result p1

    const/16 v0, 0x4b1

    if-gez p1, :cond_0

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    const/16 v1, 0x64d

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_2
    return-void
.end method

.method private established_ReadyToCall()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Pulling Call Establish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    .line 471
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 472
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 475
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    .line 474
    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 480
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_2
    return-void
.end method

.method private getCallSetupData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
    .locals 3

    .line 319
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 320
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LetteringText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 323
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 326
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object p2

    const-string v1, "#31#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 327
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "change cli to unknown"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "unknown"

    .line 328
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCli(Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isLGUspecificNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSecondImpu(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 339
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setLetteringText(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setAlertInfo(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setLteEpsOnlyAttached(Z)V

    .line 342
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getP2p()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setP2p(Ljava/util/List;)V

    .line 343
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCmcBoundSessionId(I)V

    .line 344
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setComposerData(Landroid/os/Bundle;)V

    .line 347
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isATTSoftPhoneCall()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 p2, 0xd

    if-ne p1, p2, :cond_2

    .line 349
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {p1, p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p1

    .line 350
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPEmergencyInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setPEmergencyInfo(Ljava/lang/String;)V

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set replace call id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setReplaceCallId(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCmcHandover:Z

    .line 358
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCmcEdCallSlot(I)V

    .line 361
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 362
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p2, "[IDC] set bootstrap_sdp"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;->onImsOutgoingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 365
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 366
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcSdp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->encode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setIdcExtra(Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->transitState(Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;)V

    :cond_4
    return-object v0
.end method

.method private getDestUri(Landroid/os/Message;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "put deviceID as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 307
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isLGUspecificNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 309
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 308
    invoke-virtual {v0, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_1

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getDeviceIdForCmc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPriDeviceIdWithURN()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingDevice()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLocationAcquireTime(ILcom/sec/ims/volte2/data/CallProfile;)I
    .locals 2

    .line 530
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isATTSoftPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ReadyToCall] imsProfile is null, use default"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoWIFI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 540
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLocationAcquireFail()I

    move-result p0

    goto :goto_3

    :cond_2
    const-string p0, "VoLTE"

    .line 541
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "VoNR"

    .line 542
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p0, 0xfa0

    goto :goto_3

    .line 543
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLocationAcquireFailVolte()I

    move-result p0

    :goto_3
    return p0
.end method

.method private getTargetUri(Ljava/lang/String;Lcom/sec/ims/Dialog;)Ljava/lang/String;
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->encode()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isATTSoftPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPullingServerUri()Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gr="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "[CALLTYPE]"

    if-nez p1, :cond_1

    .line 449
    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->getLocalDispName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "VoLTE"

    .line 452
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "SP"

    .line 450
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 455
    :goto_1
    invoke-virtual {p2}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result p1

    const-string p2, "[CALLSTATE]"

    if-eqz p1, :cond_2

    const-string p1, "hold"

    .line 456
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "active"

    .line 458
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 460
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_2
    return-object p1
.end method

.method private getTimsTimerVzw()I
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mContext:Landroid/content/Context;

    const/16 v1, 0x78

    .line 891
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    const-string v2, "omadm/./3GPP_IMS/VZW_TIMS_TIMER"

    .line 890
    invoke-static {v0, v2, v1, p0}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method private handleAutomaticMode()V
    .locals 5

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getAutomaticMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    if-ne v2, v1, :cond_0

    const/16 v1, 0xe

    .line 614
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 619
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xf

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne v2, v1, :cond_2

    const/16 v1, 0x12

    .line 622
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v2, v1, :cond_3

    const/16 v1, 0x13

    .line 624
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v2, v1, :cond_4

    const/16 v1, 0x10

    .line 626
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v2, v1, :cond_5

    const/16 v1, 0x11

    .line 628
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 630
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    :cond_6
    return-void
.end method

.method private handleBreakBeforeToMakeCall(Landroid/os/Message;)Z
    .locals 9

    .line 639
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 641
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start: SD is not supported VT."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 643
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x19f

    const-string v4, "SD_NOT_SUPPORTED_VT"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v3

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    const-string/jumbo v4, "support_ssac_nr"

    invoke-static {v0, v4, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 651
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/16 v5, 0xd

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 652
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    if-eq v4, v5, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 654
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v0, v4, v7}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 655
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start: call barred by ssac."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v4, "Call Barred due to SSAC"

    if-ne p1, v0, :cond_2

    .line 657
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0xa8b

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 661
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x45c

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_0
    return v3

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v4, 0xc

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 670
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 671
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 672
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v4, :cond_4

    .line 673
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x193

    const-string v4, "VoPS is not supported"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v3

    .line 679
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const-string v4, "Suspended."

    const/16 v5, 0x9cf

    const-string v7, "cannot make new call session. currently in suspend"

    if-eqz v0, :cond_5

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 680
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-direct {p1, v5, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v3

    .line 686
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    if-nez v8, :cond_6

    .line 688
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mHandOffTimedOut:Z

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wait 1.5 sec for the SUSPEND state to change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 693
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-direct {p1, v5, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_1
    return v3

    .line 700
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 701
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    if-eq p1, v6, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 702
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 703
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "CS TTY Enable so do not allow outgoing IMS TTY call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v6, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 707
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 708
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    const-string v1, "mmtel-video"

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    .line 710
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Call Type change Video to Voice for no video feature tag"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    :cond_a
    return v6
.end method

.method private handleCLI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    const-string v0, "*67*"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const-string v0, "*67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCLI(): *67 Call : cli=*67 target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "*82"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCLI(): *82 Call : cli=*82 target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private handleCMCTransferCall(Lcom/sec/ims/Dialog;Ljava/lang/String;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Update DialingNumber from sessionDescription for CMC call pull"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleCallBarring()Z
    .locals 5

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 896
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarringByNetwork(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkRejectOutgoingCall: Call barring"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 900
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ss_video_cb_pref"

    invoke-static {v1, v0, v3, v4}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ss_volte_cb_pref"

    invoke-static {v1, v0, v3, v4}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectOutgoingCall: Outgoing call is barried"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x195

    const-string v2, "Call is Barred by terminal"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v4, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v4

    :cond_1
    return v2
.end method

.method private handleNotREGStatus()Z
    .locals 6

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/16 v1, 0xd3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isProhibited(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIsLteRetrying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 789
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPendingCall()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 791
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIsLteRetrying(I)Z

    move-result v0

    const/16 v3, 0x2710

    if-eqz v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ReadyToCall] handleNotREGStatus Lte Retrying"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_5

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isCsfbRequired(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    move v3, v2

    goto :goto_2

    .line 798
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getTimsTimerVzw()I

    move-result v3

    goto :goto_2

    .line 800
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isCsfbRequired(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 804
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 809
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLte911Fail()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    goto :goto_3

    :cond_7
    const-wide/16 v0, 0x2710

    .line 811
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] start Tlte or TWlan-911fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3000001e

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 813
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x12f

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_4

    .line 815
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS is not registered. Wait to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "msec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v3, v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_4

    .line 819
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_a

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "start: Volte not registered. ForceCSFB"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x177a

    const-string v5, "VOLTE_NOT_REGISTERED"

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_4

    .line 824
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "start: SD registration is not available."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x194

    const-string v5, "SD_NOT_REGISTERED"

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_4

    .line 830
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "start: registration is not available."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x3eb

    const-string v5, "No registration."

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_4
    return v2
.end method

.method private handleSessionId(Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;)Z
    .locals 6

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "bindToNetwork for MO"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 734
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 735
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 736
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    const/4 v4, 0x7

    invoke-interface {v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 737
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    const/4 v4, 0x5

    invoke-interface {v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 738
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Pull-State"

    const-string v4, "disabled"

    .line 739
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 741
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    .line 740
    invoke-interface {v3, v4, p1, v0, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I

    move-result v0

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 744
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getAdditionalSipHeaders()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    .line 743
    invoke-interface {v0, v3, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 747
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] makeCall() returned session id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", p2p = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 748
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getP2p()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", callSetupError = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCallSetupError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-gez v0, :cond_5

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCallSetupError()I

    move-result p1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_4

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x8fd

    const-string v4, "call blocked by retry after"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 755
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3ea

    const-string/jumbo v4, "stack return -1"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_1
    return v3

    .line 762
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    if-lez p1, :cond_6

    .line 764
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 766
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 767
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] updated boundSessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 767
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 773
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    return v1
.end method

.method private isATTSoftPhoneCall()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 780
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCsfbRequired(I)Z
    .locals 7

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isCsfbRequired : profile null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {v2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 855
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isCsfbRequired : RegiGov null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 859
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    if-nez v2, :cond_2

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isCsfbRequired : PdnController null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 865
    :cond_2
    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v2

    .line 866
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v0

    .line 867
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSelfActivationRequired(I)Z

    move-result v3

    .line 868
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLastRegiErrorCode(I)I

    move-result p1

    .line 869
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCsfbRequired : VoPS["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], ThrottleState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], PCO 5 ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "], Last error ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/4 v5, 0x0

    const-string v6, "isCsfbRequired : Wait for registration"

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq v0, v2, :cond_4

    if-nez v3, :cond_3

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 874
    invoke-virtual {v2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 875
    invoke-virtual {v2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 876
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 880
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-eq v0, p1, :cond_5

    .line 881
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 885
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isCsfbRequired : CSFB"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isLGUspecificNumber(Ljava/lang/String;)Z
    .locals 1

    .line 718
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string p0, "#"

    .line 719
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMatchPidfRatForEmergencyCall(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2

    .line 921
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoWIFI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfRat()I

    move-result p0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const-string p0, "VoLTE"

    .line 924
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VoNR"

    .line 925
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 926
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfRat()I

    move-result p0

    const/4 p1, 0x2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isSoftphoneE911(I)Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private locAcqSuccess_ReadyToCall()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    if-eqz v0, :cond_4

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Location Acquiring Success -> Start Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000031

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 560
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isRequiredLocationE911(Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private locAcqTimeout_ReadyToCall()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    if-eqz v0, :cond_4

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Location Acquiring Timeout & Get Last known Location -> Start Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 573
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->updateGeolocationFromLastKnown(I)Z

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000032

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 580
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isRequiredLocationE911(Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 583
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private locAcq_ReadyToCall()V
    .locals 6

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Enable Location Provider & Request Location Acquiring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getLocationAcquireTime(ILcom/sec/ims/volte2/data/CallProfile;)I

    move-result v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x30000030

    .line 510
    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1f4

    int-to-long v4, v0

    .line 513
    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 515
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 518
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isRequiredLocationE911(Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private pulling_ReadyToCall(Landroid/os/Message;)V
    .locals 11

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isProhibited(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 383
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "msisdn"

    .line 384
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "targetDialog"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/Dialog;

    .line 386
    invoke-direct {p0, v7, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getTargetUri(Ljava/lang/String;Lcom/sec/ims/Dialog;)Ljava/lang/String;

    move-result-object v6

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ReadyToCall] pullingCall targetUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 390
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-lez v4, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/ims/Dialog;->setMdmnExtNumber(Ljava/lang/String;)V

    .line 394
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 395
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v5, "bindToNetwork for Pulling"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 398
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getP2p()Ljava/util/List;

    move-result-object v10

    move-object v9, p1

    .line 398
    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)I

    move-result v0

    .line 401
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ReadyToCall] pullingCall() returned session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_4

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3ea

    const-string/jumbo v4, "stack return -1"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isStartedCamera(IZ)Z

    .line 413
    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getRemoteNumber()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    if-ne v0, v1, :cond_5

    .line 418
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    const-string v1, ""

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 421
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 424
    :cond_5
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    .line 429
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remoteNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDialogId(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleCMCTransferCall(Lcom/sec/ims/Dialog;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialingNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 438
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->startCMC100Timer_ReadyToCall()V

    :cond_8
    return-void

    .line 376
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "pulling: registration is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3eb

    const-string v4, "No registration."

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private setDialingNumberForCmc()Ljava/lang/String;
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this is CMC call / target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / Lettering="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 226
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private setNubmerForSoftphoneE911(Ljava/lang/String;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, "*31#"

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const-string v0, "*82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*67*"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Remove CLI code for Softphone E911 call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startCMC100Timer_ReadyToCall()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Start 100 Trying Timer (5000 msec) for pulling."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xd0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private start_ReadyToCall(Landroid/os/Message;)V
    .locals 3

    .line 261
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleNotREGStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 267
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleBreakBeforeToMakeCall(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleAutomaticMode()V

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getDestUri(Landroid/os/Message;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-nez p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "dest Uri couldn\'t be null!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3ec

    const-string v1, "invalid remote uri"

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 283
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getCallSetupData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;

    move-result-object p1

    .line 285
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleCallBarring()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 289
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleSessionId(Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 293
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private tryingTimeout_ReadyToCall()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] 100 Trying Timeout - Call Terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v1, "100 Trying Timeout"

    const/4 v2, 0x0

    const/16 v3, 0x1f7

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x1

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v2, -0x1

    .line 56
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v2, ""

    .line 57
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 58
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 59
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setIsEstablished(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Enter [ReadyToCall]"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 969
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 970
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return-void
.end method

.method protected isRequiredLocationE911(Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 6

    .line 933
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 935
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "It\'s not emergency call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v2

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 941
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "profile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 945
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 946
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "supported geolocation phase check fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 950
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRequestLocationTiming()I

    move-result v2

    .line 951
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLocationTiming,="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 953
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestLocationTiming,mismatch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 957
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isMatchPidfRatForEmergencyCall(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 958
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isMatchPidfRatForEmergencyCall fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v4
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 92
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->dbrLost_ReadyToCall(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 100
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcqSuccess_ReadyToCall()V

    goto/16 :goto_2

    .line 104
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcqTimeout_ReadyToCall()V

    goto/16 :goto_2

    .line 140
    :sswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPendingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ReadyToCall] pending Emergency call failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 118
    :sswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] registration is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7d5

    goto :goto_0

    :cond_0
    const/16 p1, 0x641

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string v2, "No registration."

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x3

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_2

    .line 132
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->tryingTimeout_ReadyToCall()V

    goto :goto_2

    :sswitch_6
    return v1

    .line 87
    :sswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Postpone update request till established state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 83
    :sswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->established_ReadyToCall()V

    goto :goto_2

    .line 128
    :sswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xd0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    goto :goto_2

    .line 79
    :sswitch_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 136
    :sswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->setCallProfile_ReadyToCall(Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :sswitch_c
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->locAcq_ReadyToCall()V

    goto :goto_2

    .line 75
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->pulling_ReadyToCall(Landroid/os/Message;)V

    goto :goto_2

    .line 71
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->start_ReadyToCall(Landroid/os/Message;)V

    goto :goto_2

    .line 111
    :sswitch_f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ReadyToCall] Call session got dropped early!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 146
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] msg:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ignored !!!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_f
        0x3 -> :sswitch_f
        0x4 -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0xf -> :sswitch_b
        0x15 -> :sswitch_a
        0x1f -> :sswitch_9
        0x29 -> :sswitch_8
        0x34 -> :sswitch_7
        0x64 -> :sswitch_6
        0xd0 -> :sswitch_5
        0xd3 -> :sswitch_4
        0x12f -> :sswitch_3
        0x134 -> :sswitch_f
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x1388 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setCallProfile_ReadyToCall(Ljava/lang/String;)V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 153
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->checkCallControl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "NotAllowed"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change the target number by STK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_2

    .line 156
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    const-string/jumbo v0, "target is NotAllowed from STK"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x44e

    invoke-direct {p1, v4, v0}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v4, 0x3ec

    invoke-direct {p1, v4, v0}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_1
    return-void

    .line 173
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 174
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_4

    .line 175
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->getDeviceIdForCmc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->setDialingNumberForCmc()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 180
    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->handleCLI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->needUpdateEccUrn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->updateEccUrn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateECCUrn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isSoftphoneE911(I)Z

    move-result v1

    const/16 v2, 0xd

    if-eqz v1, :cond_7

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->setNubmerForSoftphoneE911(Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_4

    .line 194
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->isRequiredLocationE911(Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 195
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 196
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_4

    .line 198
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_4
    return-void
.end method
