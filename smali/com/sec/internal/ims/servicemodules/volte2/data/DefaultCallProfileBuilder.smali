.class public Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;
.super Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.source "DefaultCallProfileBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;-><init>(Lcom/sec/ims/volte2/data/CallProfile;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 24
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getPLettering()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLetteringText(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 25
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setHistoryInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 27
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getPhotoRing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhotoRing(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getNumberPlus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNumberPlus(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 29
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setModifyHeader(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 30
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getConferenceSupported()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConferenceSupported(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getIsFocus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setIsFocus(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 32
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getisHDIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setHDIcon(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 33
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRetryAfter()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setRetryAfterTime(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 34
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioRxTrackId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAudioRxTrackId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 35
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getFeatureCaps()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setFeatureCaps(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioEarlyMediaDir()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAudioEarlyMediaDir(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 37
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getDelayRinging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDelayRinging(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setTerminatingId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRejectProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setRejectProtocol(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRejectCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setRejectCode(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRejectText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setRejectText(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getHasDiversion()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setHasDiversion(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRemoteHeld()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setRemoteHeld(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 51
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->getVerstat(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setVerstat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getSipInviteMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSipInviteMsg(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOrganization(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getConfSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConfSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTouchScreenEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setTouchScreenEnabled(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    return-void
.end method


# virtual methods
.method public build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build CallProfile with CallParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallProfileBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPhotoRing(Ljava/lang/String;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setNumberPlus(Ljava/lang/String;)V

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getModifyHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getModifyHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setModifyHeader(Ljava/lang/String;)V

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceSupported()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceSupported()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceSupported(Ljava/lang/String;)V

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setIsFocus(Ljava/lang/String;)V

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v0

    if-lez v0, :cond_8

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setHDIcon(I)V

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRetryAfterTime()I

    move-result v0

    if-lez v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRetryAfterTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setRetryAfterTime(I)V

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v0

    if-lez v0, :cond_a

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setAudioRxTrackId(I)V

    .line 121
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getFeatureCaps()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getFeatureCaps()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setFeatureCaps(Ljava/lang/String;)V

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioEarlyMediaDir()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setAudioEarlyMediaDir(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setSipCallId(Ljava/lang/String;)V

    .line 129
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipInviteMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getSipInviteMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setSipInviteMsg(Ljava/lang/String;)V

    .line 132
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getTerminatingId()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectProtocol(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCode(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectText(Ljava/lang/String;)V

    .line 141
    :cond_f
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setVerstat(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setHasDiversion(Z)V

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isRemoteHeld()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteHeld(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setOrganization(Ljava/lang/String;)V

    .line 149
    :cond_11
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getConfSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setConfSessionId(I)V

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getTouchScreenEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setTouchScreenEnabled(Z)V

    return-object p1
.end method

.method public setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 0
    return-object p0
.end method
