.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
.super Ljava/lang/Object;
.source "CallParams.java"


# instance fields
.field private composerData:Landroid/os/Bundle;

.field private mAlertInfo:Ljava/lang/String;

.field private mAudioBitRate:Ljava/lang/String;

.field private mAudioCodec:Ljava/lang/String;

.field private mAudioEarlyMediaDir:I

.field private mAudioRxTrackId:I

.field private mCallState:I

.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcEdCallSlot:I

.field private mConfSessionId:I

.field private mConferenceSupported:Ljava/lang/String;

.field private mDelayRinging:Z

.field private mDtmfEvent:Ljava/lang/String;

.field private mFeatureCaps:Ljava/lang/String;

.field private mHasDiversion:Z

.field private mHistoryInfo:Ljava/lang/String;

.field private mIncomingCall:Z

.field private mIndicationFlag:I

.field private mIsFocus:Ljava/lang/String;

.field private mLocalHoldTone:Z

.field private mLocalVideoRTCPPort:I

.field private mLocalVideoRTPPort:I

.field private mModifySupported:Ljava/lang/String;

.field private mNumberPlus:Ljava/lang/String;

.field private mOrganization:Ljava/lang/String;

.field private mPLettering:Ljava/lang/String;

.field private mPhotoRing:Ljava/lang/String;

.field private mReferredBy:Ljava/lang/String;

.field private mRejectCode:I

.field private mRejectProtocol:Ljava/lang/String;

.field private mRejectText:Ljava/lang/String;

.field private mRemoteHeld:Z

.field private mRemoteVideoRTCPPort:I

.field private mRemoteVideoRTPPort:I

.field private mReplaces:Ljava/lang/String;

.field private mRetryAfter:I

.field private mSipCallId:Ljava/lang/String;

.field private mSipInviteMsg:Ljava/lang/String;

.field private mTerminatingId:Lcom/sec/ims/util/ImsUri;

.field private mTouchScreenEnabled:Z

.field private mVerstat:Ljava/lang/String;

.field private mVideoCrbtType:I

.field private mVideoHeight:I

.field private mVideoOrientation:I

.field private mVideoWidth:I

.field private misHDIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e0

    .line 36
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    const/16 v0, 0x280

    .line 37
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    .line 54
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    .line 55
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConfSessionId:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCallState:I

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTouchScreenEnabled:Z

    return-void
.end method


# virtual methods
.method public getAlertInfo()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioBitRate()Ljava/lang/String;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioEarlyMediaDir()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    return p0
.end method

.method public getAudioRxTrackId()I
    .locals 0

    .line 311
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    return p0
.end method

.method public getCallState()I
    .locals 0

    .line 400
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCallState:I

    return p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcEdCallSlot()I
    .locals 0

    .line 392
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    return p0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getConfSessionId()I
    .locals 0

    .line 396
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConfSessionId:I

    return p0
.end method

.method public getConferenceSupported()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    return-object p0
.end method

.method public getDelayRinging()Z
    .locals 0

    .line 355
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    return p0
.end method

.method public getDtmfEvent()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureCaps()Ljava/lang/String;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    return-object p0
.end method

.method public getHasDiversion()Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    return p0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getIndicationFlag()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    return p0
.end method

.method public getIsFocus()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalHoldTone()Z
    .locals 0

    .line 271
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    return p0
.end method

.method public getLocalVideoRTCPPort()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    return p0
.end method

.method public getLocalVideoRTPPort()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    return p0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    return-object p0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    return-object p0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoRing()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    return-object p0
.end method

.method public getRejectCode()I
    .locals 0

    .line 371
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    return p0
.end method

.method public getRejectProtocol()Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getRejectText()Ljava/lang/String;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteHeld()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    return p0
.end method

.method public getRemoteVideoRTCPPort()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    return p0
.end method

.method public getRemoteVideoRTPPort()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    return p0
.end method

.method public getReplaces()Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryAfter()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    return p0
.end method

.method public getSipCallId()Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getSipInviteMsg()Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getTerminatingId()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getTouchScreenEnabled()Z
    .locals 0

    .line 404
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTouchScreenEnabled:Z

    return p0
.end method

.method public getVerstat()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCrbtType()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    return p0
.end method

.method public getisHDIcon()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    return p0
.end method

.method public isIncomingCall()Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    return p0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    return-void
.end method

.method public setAsIncomingCall()V
    .locals 1

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIncomingCall:Z

    return-void
.end method

.method public setAudioBitRate(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioBitRate:Ljava/lang/String;

    return-void
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    return-void
.end method

.method public setAudioEarlyMediaDir(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    return-void
.end method

.method public setAudioRxTrackId(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioRxTrackId:I

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    .line 398
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCallState:I

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setCmcEdCallSlot(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    return-void
.end method

.method public setConfSessionId(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConfSessionId:I

    return-void
.end method

.method public setConferenceSupported(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    return-void
.end method

.method public setDelayRinging(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    return-void
.end method

.method public setDtmfEvent(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    return-void
.end method

.method public setFeatureCaps(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    return-void
.end method

.method public setHasDiversion(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    return-void
.end method

.method public setIndicationFlag(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    return-void
.end method

.method public setIsFocus(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    return-void
.end method

.method public setLocalHoldTone(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    return-void
.end method

.method public setLocalVideoRTCPPort(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    return-void
.end method

.method public setLocalVideoRTPPort(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    return-void
.end method

.method public setPhotoRing(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    return-void
.end method

.method public setReferredBy(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    return-void
.end method

.method public setRejectCode(I)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    return-void
.end method

.method public setRejectProtocol(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    return-void
.end method

.method public setRejectText(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    return-void
.end method

.method public setRemoteHeld(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    return-void
.end method

.method public setRemoteVideoRTCPPort(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    return-void
.end method

.method public setRemoteVideoRTPPort(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    return-void
.end method

.method public setReplaces(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReplaces:Ljava/lang/String;

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    return-void
.end method

.method public setSipCallId(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    return-void
.end method

.method public setSipInviteMsg(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipInviteMsg:Ljava/lang/String;

    return-void
.end method

.method public setTerminatingId(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTerminatingId:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setTouchScreenEnabled(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTouchScreenEnabled:Z

    return-void
.end method

.method public setVerstat(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    return-void
.end method

.method public setVideoCrbtType(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    return-void
.end method

.method public setisHDIcon(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHistoryInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallParams [mPLettering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPLettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHistoryInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDtmfEvent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDtmfEvent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mModifySupported="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mModifySupported:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAudioCodec="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNumberPlus="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mNumberPlus:Ljava/lang/String;

    .line 410
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mConferenceSupported="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConferenceSupported:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFocus="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIsFocus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIndicationFlag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mIndicationFlag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", misHDIcon="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->misHDIcon:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mPhotoRing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mPhotoRing:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalVideoRTPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalVideoRTCPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalVideoRTCPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteVideoRTPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteVideoRTCPPort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteVideoRTCPPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRetryAfter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRetryAfter:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAlertInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoOrientation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoOrientation:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mReferredBy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mReferredBy:Ljava/lang/String;

    .line 416
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSipCallId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mOrganization="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mOrganization:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mComposerData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->composerData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mLocalHoldTone="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mLocalHoldTone:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoWidth="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoHeight="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVideoCrbtType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVideoCrbtType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFeatureCaps="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mFeatureCaps:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAudioEarlyMediaDir="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mAudioEarlyMediaDir:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mVerstat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mVerstat:Ljava/lang/String;

    .line 421
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mHasDiversion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mHasDiversion:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDelayRinging="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mDelayRinging:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectProtocol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectProtocol:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mRejectText="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRejectText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mRemoteHeld="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mRemoteHeld:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCmcEdCallSlot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCmcEdCallSlot:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mConfSessionId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mConfSessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCallState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mCallState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mTouchScreenEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->mTouchScreenEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
