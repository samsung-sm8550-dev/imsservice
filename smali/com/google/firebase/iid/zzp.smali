.class final synthetic Lcom/google/firebase/iid/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzola:Lcom/google/firebase/iid/zzm;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzp;->zzola:Lcom/google/firebase/iid/zzm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object p0, p0, Lcom/google/firebase/iid/zzp;->zzola:Lcom/google/firebase/iid/zzm;

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/zzm;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzm;->zzini:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzm;->zzawu()V

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzm;->zzini:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzt;

    iget-object v2, p0, Lcom/google/firebase/iid/zzm;->zzinj:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/firebase/iid/zzt;->zzino:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/firebase/iid/zzm;->zzokz:Lcom/google/firebase/iid/zzk;

    invoke-static {v2}, Lcom/google/firebase/iid/zzk;->zzb(Lcom/google/firebase/iid/zzk;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/iid/zzq;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/iid/zzq;-><init>(Lcom/google/firebase/iid/zzm;Lcom/google/firebase/iid/zzt;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-interface {v2, v3, v5, v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MessengerIpcClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MessengerIpcClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/google/firebase/iid/zzm;->zzokz:Lcom/google/firebase/iid/zzk;

    invoke-static {v2}, Lcom/google/firebase/iid/zzk;->zza(Lcom/google/firebase/iid/zzk;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/iid/zzm;->zzing:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v5, v0, Lcom/google/firebase/iid/zzt;->what:I

    iput v5, v4, Landroid/os/Message;->what:I

    iget v5, v0, Lcom/google/firebase/iid/zzt;->zzino:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "oneWay"

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzt;->zzaww()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "pkg"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    iget-object v0, v0, Lcom/google/firebase/iid/zzt;->zzinp:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzm;->zzoky:Lcom/google/firebase/iid/zzr;

    invoke-virtual {v0, v4}, Lcom/google/firebase/iid/zzr;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/zzm;->zzl(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
