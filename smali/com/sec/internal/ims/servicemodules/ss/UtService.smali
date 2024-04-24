.class public Lcom/sec/internal/ims/servicemodules/ss/UtService;
.super Lcom/sec/ims/ss/IUtService$Stub;
.source "UtService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/sec/ims/ss/IUtService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    .line 20
    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 21
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    return-void
.end method

.method public isUtEnabled(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result p0

    return p0
.end method

.method public queryCLIP(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCLIP(I)I

    move-result p0

    return p0
.end method

.method public queryCLIR(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCLIR(I)I

    move-result p0

    return p0
.end method

.method public queryCOLP(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCOLP(I)I

    move-result p0

    return p0
.end method

.method public queryCOLR(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCOLR(I)I

    move-result p0

    return p0
.end method

.method public queryCallBarring(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCallBarring(III)I

    move-result p0

    return p0
.end method

.method public queryCallForward(IILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCallForward(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public queryCallWaiting(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryCallWaiting(I)I

    move-result p0

    return p0
.end method

.method public registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    return-void
.end method

.method public updateCLIP(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCLIP(IZ)I

    move-result p0

    return p0
.end method

.method public updateCLIR(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCLIR(II)I

    move-result p0

    return p0
.end method

.method public updateCOLP(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCOLP(IZ)I

    move-result p0

    return p0
.end method

.method public updateCOLR(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCOLR(II)I

    move-result p0

    return p0
.end method

.method public updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 80
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallForward(IIILjava/lang/String;II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 87
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCallForward(IIILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public updateCallWaiting(IZI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCallWaiting(IZI)I

    move-result p0

    return p0
.end method
