.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleEpdgState(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x3000000a

    goto :goto_0

    :cond_0
    const v0, 0x3000000b

    .line 123
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->-$$Nest$fgetmSessionMap(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 125
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 127
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCellInfoChanged, phoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): networkType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]isWifiConnected ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "], phoneId ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgConnected: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->handleEpdgState(IZ)V

    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgDisconnected: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->handleEpdgState(IZ)V

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMobileRadioConnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    .line 0
    return-void
.end method
