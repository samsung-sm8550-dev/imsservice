.class Lcom/sec/internal/ims/core/WfcEpdgManager$3;
.super Lcom/sec/epdg/EpdgManager$EpdgListener;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 416
    iget-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iput-boolean v1, p2, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    .line 419
    invoke-static {p2, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$000(Lcom/sec/internal/ims/core/WfcEpdgManager;I)V

    move p2, v0

    :cond_0
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aget-boolean v2, v2, p1

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v1

    aget v1, v1, p1

    if-ne v1, p3, :cond_2

    return-void

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aput-boolean v0, v2, p1

    .line 427
    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v0

    aput p3, v0, p1

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 431
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/ims/IEpdgListener;->onEpdgAvailable(III)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 439
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 436
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 442
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgDeregister(I)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 469
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgDeregister(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 477
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 474
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 480
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 582
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgHandoverEnableChanged(IZ)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 590
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 587
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 593
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 450
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 458
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 455
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 461
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 488
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 496
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 493
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 499
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 507
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 515
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 512
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 518
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgRegister(IZ)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 526
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgRegister(IZ)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 534
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 531
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 537
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgReleaseCall(I)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 563
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgReleaseCall(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 571
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 568
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 574
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgShowPopup(II)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 543
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 544
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgShowPopup(II)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 552
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 549
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 555
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
