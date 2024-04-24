.class Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonyCallbackForPdnController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$CellInfoListener;
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mInternalSimSlot:I

.field mMobileRadioConnected:Z

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mSubId:I


# direct methods
.method public static synthetic $r8$lambda$RiHQbRJ2xAlIrCU3FRMulLtWMgw(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 54
    iput p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    .line 55
    iput p4, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    return-void
.end method

.method private synthetic lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .locals 1

    .line 232
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p3

    const/16 v0, 0x40

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_0

    .line 233
    iget-object p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPreciseDataConnectionState(ILandroid/telephony/PreciseDataConnectionState;)V

    :cond_0
    return-void
.end method

.method private notifySnapshotState(II)V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySnapshotState: snapshotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 255
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 260
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result p1

    sget v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 267
    iget v4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    iget v2, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 276
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspendedBySnapshot(I)V

    goto :goto_1

    .line 278
    :cond_4
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V

    goto :goto_1

    .line 281
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getInternalSimSlot()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    return p0
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCellInfoChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 222
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onCellInfoChanged(Ljava/util/List;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4

    .line 245
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/PdnController;->setDataState(II)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 4

    .line 228
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 239
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 14

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v1, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    .line 81
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v7

    const-string v8, "=>"

    if-eq v4, v7, :cond_3

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EmergencyOnlyReg:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v7, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v9, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v7, v9}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyOnly(Z)V

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getImsVoiceAvail()Z

    move-result v4

    const/4 v7, 0x3

    if-eq v3, v5, :cond_5

    if-ne v3, v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v6

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v5

    :goto_3
    invoke-static {v4, v9}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(ZZ)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    .line 90
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v9

    if-eq v4, v9, :cond_6

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VoPS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    move v4, v5

    goto :goto_4

    :cond_6
    move v4, v6

    .line 96
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getIsEbSupported()Z

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->translateEmcbs(Z)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v9

    .line 98
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_7

    goto :goto_5

    :cond_7
    if-nez v10, :cond_8

    .line 104
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    goto :goto_5

    .line 108
    :cond_8
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 111
    :goto_5
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v12

    if-eq v12, v9, :cond_9

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EmcBsIndi:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V

    .line 116
    :cond_9
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v9

    .line 117
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v12

    if-eq v12, v9, :cond_a

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VoiceReg:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    move v4, v5

    .line 123
    :cond_a
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v9

    .line 124
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v12

    if-eq v12, v9, :cond_b

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VoiceNet:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceNetworkType(I)V

    move v4, v5

    .line 130
    :cond_b
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v9

    .line 131
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v12

    if-eq v9, v12, :cond_c

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PsOnly:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPsOnlyReg(Z)V

    move v4, v5

    .line 137
    :cond_c
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result v9

    if-ne v9, v7, :cond_d

    move v7, v5

    goto :goto_6

    :cond_d
    move v7, v6

    :goto_6
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setInternationalRoaming(Z)V

    .line 140
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRoaming()Z

    move-result v7

    .line 141
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v9

    if-eq v7, v9, :cond_e

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataRoaming:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    move v4, v5

    .line 147
    :cond_e
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v7

    .line 148
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v9

    if-eq v7, v9, :cond_f

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VoiceRoaming:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRoaming(Z)V

    move v4, v5

    .line 154
    :cond_f
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operator:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setOperatorNumeric(Ljava/lang/String;)V

    move v4, v5

    .line 162
    :cond_10
    iget v7, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_11

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    move v7, v5

    goto :goto_7

    :cond_11
    move v7, v6

    .line 164
    :goto_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v9

    if-eq v7, v9, :cond_12

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataConnState:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataConnectionState(Z)V

    move v4, v5

    :cond_12
    const/16 v7, 0x13

    if-ne v10, v7, :cond_13

    move v10, v11

    .line 175
    :cond_13
    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    .line 176
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 178
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v0

    if-nez v0, :cond_14

    .line 179
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-nez v0, :cond_15

    .line 180
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 182
    iget v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioConnected(I)V

    goto :goto_8

    .line 186
    :cond_14
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-eqz v0, :cond_15

    .line 187
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 189
    iget v6, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioDisconnected(I)V

    goto :goto_9

    .line 194
    :cond_15
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceStateChanged: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Changed="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    .line 195
    invoke-static {p1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {v0, v5, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iput-boolean v4, p1, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 199
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v0

    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    .line 201
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getSnapshotStatus()I

    move-result p1

    iget v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->notifySnapshotState(II)V

    .line 203
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 205
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {p1, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    :cond_16
    return-void
.end method
