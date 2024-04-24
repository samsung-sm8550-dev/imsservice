.class Lcom/sec/internal/ims/core/NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCallback.java"


# static fields
.field static final LOCAL_IP_CHANGED:I = 0x1

.field static final LOCAL_STACKED_IP_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field isSuspended:Z

.field mDisconnectRequested:Z

.field mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

.field final mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field mNetwork:Landroid/net/Network;

.field final mNetworkType:I

.field mPdnConnected:Z

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 34
    new-instance v0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mDisconnectRequested:Z

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->isSuspended:Z

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 42
    iput-object p3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 43
    iput p2, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    .line 44
    iput p4, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public isDisconnectRequested()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mDisconnectRequested:Z

    return p0
.end method

.method isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-interface {v0, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v2
.end method

.method isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 151
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 57
    iget v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-boolean v1, v0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onAvailable: network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;-><init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    .line 66
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    const/16 v2, 0x6c

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesChanged: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " networkCapabilities "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x15

    .line 109
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->isSuspended:Z

    if-eqz p1, :cond_1

    .line 111
    iget p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    const-string/jumbo p2, "resume!"

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->isSuspended:Z

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->isSuspended:Z

    if-nez p1, :cond_1

    .line 117
    iget p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    const-string/jumbo p2, "suspend!"

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->isSuspended:Z

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspended(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4

    .line 82
    sget-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, v1, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, v2, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "onLinkPropertiesChanged: No callback exists"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v1

    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, v2, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 94
    iget-object v1, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_2

    :cond_1
    const-string p0, "onLinkPropertiesChanged: null callback"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 100
    :cond_2
    new-instance v0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {v0, p1, v1, p2}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;-><init>(Landroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p2, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    const/16 v1, 0x6f

    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 3

    .line 77
    sget-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLosing: network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " maxMsToLive "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/NetworkCallback;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    iget v1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    const/16 v2, 0x67

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDisconnectRequested()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mDisconnectRequested:Z

    return-void
.end method
