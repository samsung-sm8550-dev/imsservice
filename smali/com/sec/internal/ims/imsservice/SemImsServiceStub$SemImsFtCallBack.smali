.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;
.super Ljava/lang/Object;
.source "SemImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemImsFtCallBack"
.end annotation


# instance fields
.field final mListener:Lcom/samsung/android/ims/ft/SemImsFtListener;

.field final mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/ft/SemImsFtListener;Ljava/lang/String;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->mListener:Lcom/samsung/android/ims/ft/SemImsFtListener;

    .line 1008
    iput-object p3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->mToken:Ljava/lang/String;

    .line 1010
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/ims/ft/SemImsFtListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmOngoingFtEventListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->reset()V

    return-void
.end method

.method protected reset()V
    .locals 2

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->mListener:Lcom/samsung/android/ims/ft/SemImsFtListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/ft/SemImsFtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
