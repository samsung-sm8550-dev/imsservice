.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;
.super Ljava/lang/Object;
.source "TmoEcholocateBroadcaster.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Echolocate_Broadcaster"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

.field private mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

.field protected mPendingQue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetryINVITE:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mPendingQue:Ljava/util/Queue;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 33
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 34
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getPhoneCount()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mRetryINVITE:[Z

    return-void
.end method


# virtual methods
.method public reset(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mRetryINVITE:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public sendDedicatedEventAfterHandover(I)V
    .locals 7

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDedicatedEventAfterHandover:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Broadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendDedicatedEventAfterHandover - No call session."

    .line 414
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p0, "sendDedicatedEventAfterHandover - call is on EPDG."

    .line 419
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DedicatedBearer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 425
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.detailedCallState"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallNumber"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CallState"

    const-string v4, "EPDG_HO_FAILED"

    .line 427
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v3

    const-string v5, "VoiceAccessNetworkStateType"

    .line 429
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, p1, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CallID"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oemIntentTimestamp"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v3, "cellid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EpdgHoFailureCause"

    const-string v3, "5QI_QCI_1_FLOW_SETUP_FAILURE"

    .line 435
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string p1, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sendDedicatedEventAfterHandover : 5QI_QCI_1_FLOW_SETUP_FAILURE, CallNumber:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", CallID:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 438
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V
    .locals 3

    .line 43
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getSalescode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Echolocate_Broadcaster"

    if-nez p1, :cond_0

    const-string/jumbo p0, "sendDetailCallEvent - Do not broadcast."

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "diagandroid.phone.detailedCallState"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallNumber"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CallState"

    .line 50
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getCallState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VoiceAccessNetworkStateType"

    .line 51
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VoiceAccessNetworkStateBand"

    .line 52
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getNetworkBand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VoiceAccessNetworkStateSignal"

    .line 53
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getNetworkSignal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CallID"

    .line 54
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oemIntentTimestamp"

    .line 55
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cellid"

    .line 56
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->getCellId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EpdgHoFailureCause"

    const-string v1, "NA"

    .line 57
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string p2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo p0, "sendEPSFB state for now"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendEmergencyCallTimerStateMSG(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;)V
    .locals 5

    .line 344
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->isEpdgCall()Z

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.emergencyCallTimerState"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "CallNumber"

    .line 348
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getCallNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "TimerName"

    .line 349
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getTimerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "TimerState"

    .line 350
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getStateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "VoiceAccessNetworkStateType"

    .line 351
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CallID"

    .line 354
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oemIntentTimestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cellid"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEmergencyCallTimerStateMSG["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], callId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timer="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getTimerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->getStateName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Echolocate_Broadcaster"

    .line 358
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method protected sendPendingSignallingMSG(J)V
    .locals 3

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-string v1, "cellid"

    .line 66
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RAT"

    const-string v2, "3GPP-E-UTRAN-FDD"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPendingSignallingMSG :: Origin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IMSSignallingMessageOrigin"

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oemIntentTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "oemIntentTimestamp"

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Echolocate_Broadcaster"

    .line 69
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected sendTmoEcholocateCarrierConfig(IILjava/lang/String;)V
    .locals 8

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getSalescode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Echolocate_Broadcaster"

    if-nez v0, :cond_0

    const-string p0, "Do not broadcast. ICDV or Signature key is wrong"

    .line 367
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const-string/jumbo p0, "sendTmoEcholocateCarrierConfig ignore callstate "

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "phoneId is not valid - STOP"

    .line 378
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p3, "phoneNumber is not valid - use call profile number"

    .line 386
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p3

    .line 390
    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-string v2, "diagandroid.phone.carrierConfig"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getVoiceConfig()Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getVoWiFiConfig()Ljava/lang/String;

    move-result-object v3

    .line 394
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getSa5gBandConfig(I)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 395
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getConfigVersion()Ljava/lang/String;

    move-result-object v5

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendTmoEcholocateCarrierConfig voiceconfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", vowificonfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Sa5gbandconfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", configversion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callNumber : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "carrierVoiceConfig"

    .line 400
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "carrierVoWiFiConfig"

    .line 401
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "carrierSa5gBandConfig"

    .line 402
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "carrierConfigVersion"

    .line 403
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CallID"

    .line 404
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CallNumber"

    .line 405
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "oemIntentTimestamp"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string p1, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected sendTmoEcholocateHandoverFail(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getSalescode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Echolocate_Broadcaster"

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendTmoEcholocateHandoverFail: sendDetailCallEvent - Do not broadcast."

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "diagandroid.phone.detailedCallState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkBand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoiceAccessNetworkStateBand"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "VoiceAccessNetworkStateSignal"

    .line 85
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkSignal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "oemIntentTimestamp"

    .line 86
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoiceAccessNetworkStateType"

    .line 89
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 93
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    .line 95
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v6

    invoke-virtual {v5, v4, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cellid"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const-string v4, "CallState"

    const-string v5, "EPDG_HO_FAILED"

    .line 105
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CallID"

    .line 106
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CallNumber"

    .line 107
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS_REGISTRATION_FAILURE_AFTER_HO_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EpdgHoFailureCause"

    .line 113
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string v4, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendTmoEcholocateHandoverFail :: Origin ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Line1 [ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Cseq ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Reason ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] callId_App ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] callId_IMS ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] handoverFailString ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V
    .locals 9

    .line 283
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Echolocate_Broadcaster"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "sendTmoEcholocateRTP :: Session Id is NULL"

    .line 284
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDir()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DL"

    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.RTPDLStat"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "RTPDownlinkStatusLossRate"

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPDownlinkStatusDelay"

    .line 293
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPDownlinkStatusJitter"

    .line 294
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPDownlinkStatusMeasuredPeriod"

    .line 295
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 297
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.RTPULStat"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "RTPUplinkStatusLossRate"

    .line 298
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPUplinkStatusDelay"

    .line 299
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPUplinkStatusJitter"

    .line 300
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RTPUplinkStatusMeasuredPeriod"

    .line 301
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 304
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPhoneIdFromSessionId(I)I

    move-result v4

    .line 307
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "Can\'t get call num from sessionID"

    .line 309
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v5

    .line 313
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v6, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VoiceAccessNetworkStateType"

    .line 314
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v7, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v7, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 319
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "null"

    .line 323
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string p0, "Can\'t find echo CallId from session"

    .line 325
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_4
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v8, v4, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallNumber"

    .line 331
    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "CallID"

    .line 332
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "oemIntentTimestamp"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cellid"

    .line 334
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTmoEcholocateRTP :: dir ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] LossRate ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Jitter ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Measuredperiod ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Delay ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;)V
    .locals 23

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.imsSignallingMessage"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 130
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPhoneIdFromSessionId(I)I

    move-result v4

    .line 132
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v7, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "Echolocate_Broadcaster"

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v5

    const-string v12, "INVITE"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check mRetryINVITE["

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mRetryINVITE:[Z

    aget-boolean v12, v12, v4

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mRetryINVITE:[Z

    aget-boolean v12, v5, v4

    if-eqz v12, :cond_0

    .line 136
    aput-boolean v10, v5, v4

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    const/4 v2, 0x2

    move-object/from16 v5, p1

    invoke-virtual {v1, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 141
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mRetryINVITE:[Z

    aput-boolean v9, v0, v4

    return-void

    :cond_1
    :goto_0
    move-object/from16 v5, p1

    .line 147
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v12

    .line 148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CSeq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 150
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getContents()Ljava/lang/String;

    move-result-object v14

    .line 152
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v16, "NA"

    if-eqz v15, :cond_2

    move-object/from16 v14, v16

    goto :goto_1

    .line 155
    :cond_2
    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v15, v14}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getSDPContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const-string v15, "VoiceAccessNetworkStateBand"

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkBand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "VoiceAccessNetworkStateSignal"

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkSignal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingMessageCallID"

    .line 160
    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingCSeq"

    .line 161
    invoke-virtual {v2, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingMessageLine1"

    .line 162
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingMessageOrigin"

    .line 163
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingMessageSDP"

    .line 164
    invoke-virtual {v2, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "oemIntentTimestamp"

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    const-string v7, ", e:"

    const-string v8, "mCallIDList add [s:"

    const-string v15, "]"

    if-eqz v3, :cond_6

    .line 172
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 173
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v17

    .line 174
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v18

    .line 175
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v19

    .line 176
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v20

    .line 177
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 178
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 179
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 180
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNewAppCallId()Ljava/lang/String;

    move-result-object v9

    .line 181
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v14

    const-string v14, "create the echo callID "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object/from16 v22, v14

    .line 183
    :goto_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v22, v14

    move-object/from16 v9, v18

    .line 186
    :goto_3
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 p1, v9

    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_4

    :cond_6
    move-object/from16 v22, v14

    const/16 v17, 0x0

    move-object/from16 p1, v17

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 193
    :goto_4
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v9, v13}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->isEndCall(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v18, v13

    const-string v13, "Reason:"

    if-eqz v9, :cond_c

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v6

    const-string v9, "CANCEL"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v6

    const-string v9, "BYE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    const/16 v6, 0xe

    if-ne v14, v6, :cond_8

    const-string v16, "DeviceReason:De-Reg"

    goto :goto_6

    .line 198
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "DeviceReason:Normal"

    goto :goto_5

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceReason:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    move-object/from16 v16, v6

    goto :goto_6

    .line 201
    :cond_a
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 203
    :cond_c
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_d
    :goto_6
    move-object/from16 v6, v16

    const-string v9, "IMSSignallingMessageReason"

    .line 207
    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v6, v4, v5, v10}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v9, "VoiceAccessNetworkStateType"

    .line 211
    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "cellid"

    .line 212
    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v6, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getRatType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RAT"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v3, :cond_12

    .line 216
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getPeerNumber()Ljava/lang/String;

    move-result-object v5

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CallNumber from h_from:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v0, "Can\'t find callNumber :: STOP"

    .line 219
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 223
    :cond_e
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 224
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 225
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNewAppCallId()Ljava/lang/String;

    move-result-object v6

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object v9, v6

    const/16 v6, 0x3a

    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_11

    const/4 v7, 0x0

    .line 232
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "sip"

    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v7, "tel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    .line 235
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_11

    const/4 v7, 0x0

    .line 237
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_11
    move-object/from16 v17, v5

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extracted callNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_12
    move-object/from16 v9, p1

    :goto_7
    move-object/from16 v5, v17

    .line 244
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->isEndCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 245
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v12, 0x3e8

    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_13
    const-string v6, "CallID"

    .line 249
    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CallNumber"

    .line 250
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getCallState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    .line 253
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getDiffTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_14

    .line 254
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->setDiffTime(J)J

    .line 255
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v1, v4, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->setEPSFBsuccess(IZ)V

    if-eqz v3, :cond_14

    .line 256
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 257
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setEPSFBsuccess(Z)V

    .line 258
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCellId(Ljava/lang/String;)V

    .line 262
    :cond_14
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sendTmoEcholocateSignallingMSG :: pending case with EPSFB before SUCCESS"

    .line 263
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_15
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTmoEcholocateSignallingMSG :: Origin ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Line1 [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Cseq ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Reason ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] callId_App ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] callId_IMS ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sdpContents ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
