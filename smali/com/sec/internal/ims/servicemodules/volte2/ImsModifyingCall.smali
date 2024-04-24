.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsModifyingCall.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private error_ModifyingCall(Landroid/os/Message;)V
    .locals 4

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 226
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1388

    const-string v2, "Call switch failed"

    const/16 v3, 0x455

    if-lt v0, v1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] big data code over 5000 means call ended"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    const/16 v0, 0x25b

    if-ne p1, v0, :cond_1

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x456

    const-string v1, "Call switch rejected"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 239
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private idcError_ModifyingCall(Landroid/os/Message;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[IDC] idcError_ModifyingCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-eq v0, v1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[IDC] Idc State isn\'t MODIFYING"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;->notifyErrorToSdpOffer(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 159
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->transitState(Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;)V

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private idcModified_ModifyingCall(Landroid/os/Message;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[IDC] idcModified_ModifyingCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-eq v0, v1, :cond_1

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[IDC] Idc State isn\'t MODIFYING"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;->receiveSdpAnswer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 144
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->NEGOTIATED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->transitState(Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;)V

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private modified_ModifyingCall(Landroid/os/Message;)V
    .locals 6

    .line 163
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 164
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 166
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifiedCallType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", orgCallType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Modify requested but callType hasn\'t changed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x456

    const-string v1, "Call switch rejected"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    .line 175
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 174
    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-nez v0, :cond_1

    .line 180
    iput v1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void

    :cond_2
    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    .line 187
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v5, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    if-nez v5, :cond_4

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "TTY/RTT FULL defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void

    .line 193
    :cond_4
    iput-boolean v2, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    :cond_5
    if-eq v0, v1, :cond_8

    .line 197
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 198
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    .line 200
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 201
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v1

    if-ne v1, v3, :cond_7

    move v2, v3

    .line 199
    :cond_7
    invoke-interface {p1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 204
    :cond_8
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 205
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method private switchRequest_ModifyingCall(Landroid/os/Message;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ModifyingCall] accept a call modification in progress of resolving race condition"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting switch request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1eb

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->rejectModifyCallType(I)I

    move-result p1

    if-gez p1, :cond_1

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3ee

    const-string v2, ""

    invoke-direct {p1, v0, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, -0x1

    .line 29
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 30
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendCmcPublishDialog()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter [ModifyingCall]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne v0, v1, :cond_1

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[IDC] Session Modifying."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onCallModifyRequested(I)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setPreviousState(Lcom/sec/internal/helper/State;)V

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModifyingCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 v1, 0x51

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    .line 128
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

    goto/16 :goto_0

    .line 118
    :sswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Re-INVITE defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 53
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->idcError_ModifyingCall(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 49
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->idcModified_ModifyingCall(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 57
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->modified_ModifyingCall(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 67
    :sswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting resume request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x458

    const-string v0, "Call resume failed"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 123
    :sswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] SEND_TEXT defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 77
    :sswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 73
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->switchRequest_ModifyingCall(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :sswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleRemoteHeld(Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Resume video defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ModifyingCall] Hold video defered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-string p1, "Call switch failed"

    const/16 v0, 0xa

    const/16 v1, 0x455

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    goto :goto_0

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ModifyingCall] Rejecting hold request while processing modify"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x457

    const-string v0, "Call hold failed"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;->error_ModifyingCall(Landroid/os/Message;)V

    :goto_0
    return v3

    :cond_6
    :sswitch_9
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x29 -> :sswitch_8
        0x37 -> :sswitch_7
        0x3e -> :sswitch_6
        0x40 -> :sswitch_5
        0x47 -> :sswitch_4
        0x5b -> :sswitch_3
        0x64 -> :sswitch_9
        0x99 -> :sswitch_2
        0x9b -> :sswitch_1
        0x190 -> :sswitch_9
        0x1f6 -> :sswitch_0
        0x1388 -> :sswitch_9
    .end sparse-switch
.end method
