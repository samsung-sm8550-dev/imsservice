.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
.super Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.source "CloudMessageBufferSchedulingHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageBufferEvent;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Z)V

    .line 69
    const-class p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p2, "onCreate"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->registerRegistrants()V

    .line 79
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->registerNmsEventListPushListener()V

    return-void
.end method

.method private downloadMessageOnFetchUrlSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryPendingUrlFetch()I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingUrlFetch()I

    move-result v1

    .line 571
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryPendingVVMUrlFetch(I)I

    move-result v2

    .line 572
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryPendingVVMUrlFetch(I)I

    move-result v4

    .line 573
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadMessageOnFetchUrlSuccess pendingMMS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pendingRCS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pendingVVM : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pendingVVMGreetingcount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "MessageApp"

    .line 576
    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    .line 577
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz p2, :cond_0

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 579
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p3, "downloadMessageOnFetchUrlSuccess onSendUnDownloadedMessage for RCS Message"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p3

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 585
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p3

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-ne p3, v3, :cond_2

    .line 592
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p3

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    if-ne p3, v5, :cond_3

    .line 594
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p3

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleDftMsgAppChangedToNative()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDftMsgAppChangedToNative initSyncStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->startGoForwardSyncDbCopyTask()V

    :cond_2
    return-void
.end method

.method private handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 844
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 860
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onGreetingAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 851
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onMmsAllPayloadsDownloadFromMcs(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 854
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onRcsAllPayloadsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    :goto_0
    return-void
.end method

.method private handleDownloadedImdns(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    .line 1655
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1656
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onRcsChatImdnsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_0
    return-void
.end method

.method private handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 804
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 807
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 811
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onMmsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onRcsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    :goto_0
    return-void
.end method

.method private handleProvisionSuccess()V
    .locals 8

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 434
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v4

    .line 435
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check initial sync status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "event: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " linenum:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    .line 439
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 441
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x0

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    goto :goto_0

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialDBCopy()V

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    .line 456
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    goto :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    .line 444
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendCloudUnSyncedUpdate()V

    .line 445
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendDeviceUnSyncedUpdate()V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    .line 448
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upload status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 450
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 451
    :cond_4
    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleRCSDbReady()V
    .locals 1

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    .line 472
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->resetImsi()V

    .line 473
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialDBCopy()V

    return-void
.end method

.method private handleSearchObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 13

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    .line 659
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    .line 658
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V

    .line 660
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 661
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const-string v2, "VVMDATA"

    const-string v3, "VVMDATA"

    .line 670
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getIsFullSync()Z

    move-result v6

    .line 667
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    goto :goto_1

    .line 671
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const-string v2, "VVMDATA"

    const-string v3, "GREETING"

    .line 675
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getIsFullSync()Z

    move-result v6

    .line 672
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    goto :goto_1

    .line 662
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v8, "MessageApp"

    const-string v9, "MSG_ALL"

    .line 665
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getIsFullSync()Z

    move-result v12

    .line 662
    invoke-virtual/range {v7 .. v12}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    .line 677
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 678
    iget-object v4, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    if-eqz v4, :cond_c

    move v4, v3

    .line 679
    :goto_2
    iget-object v5, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v6, v5

    if-ge v4, v6, :cond_c

    .line 680
    aget-object v5, v5, v4

    .line 681
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v7, v6

    move-object v8, v5

    invoke-direct/range {v7 .. v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 682
    iget v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    goto/16 :goto_3

    .line 685
    :cond_4
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "param.mObjectType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_a

    const/4 v8, 0x4

    if-eq v7, v8, :cond_9

    if-eq v7, v1, :cond_8

    if-eq v7, v2, :cond_7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_6

    const/16 v8, 0x26

    if-eq v7, v8, :cond_5

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 701
    :pswitch_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectRCSIMDNCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    goto :goto_3

    .line 696
    :pswitch_1
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 697
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v6, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectRCSMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    goto :goto_3

    .line 714
    :cond_5
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v5, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyConferenceInfo(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;Z)V

    goto :goto_3

    .line 711
    :cond_6
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v7, v6, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    goto :goto_3

    .line 708
    :cond_7
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleObjectVvmGreetingCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    goto :goto_3

    .line 704
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v5, v6, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleObjectVvmMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    goto :goto_3

    .line 691
    :cond_9
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleObjectMMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    goto :goto_3

    .line 688
    :cond_a
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleObjectSMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    :cond_b
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 723
    :cond_c
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 724
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    if-eq p2, v0, :cond_f

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p2

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    if-ne p2, v4, :cond_d

    goto :goto_4

    .line 739
    :cond_d
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->isEmptySession()Z

    move-result p2

    if-nez p2, :cond_e

    .line 740
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNotifySessionToApp()V

    .line 742
    :cond_e
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 743
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    .line 742
    invoke-virtual {p0, p2, p1, v3, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_6

    .line 726
    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p2

    if-ne p2, v0, :cond_10

    .line 727
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleSyncSummaryComplete(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move v1, v2

    .line 730
    :goto_5
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryPendingVVMUrlFetch(I)I

    move-result p2

    if-lez p2, :cond_11

    .line 732
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 733
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    .line 732
    invoke-virtual {p0, p2, p1, v3, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_6

    .line 735
    :cond_11
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VVMDATA"

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageOnFetchUrlSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSearchObjectForVVM(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 9

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSearchObjectForVVM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 764
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 765
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 766
    aget-object v4, v1, v0

    .line 767
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 768
    iget v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 769
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v2, "errorL in object list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 772
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param.mObjectType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eqz v2, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleObjectVvmMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    goto :goto_1

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v2, "invalid message context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleStartSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;Z)V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFullSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 315
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 316
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    .line 317
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v3, "MessageApp"

    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MSG_ALL"

    .line 319
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v0, v3, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    goto :goto_0

    :cond_2
    const-string v3, "VVMDATA"

    .line 322
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM Normal Sync Processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v0, v3, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    goto :goto_0

    .line 330
    :cond_3
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->notifyVVMNormalSyncStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 332
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GREETING"

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Greeting Normal Sync Processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v0, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    goto/16 :goto_0

    .line 343
    :cond_5
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->notifyVVMNormalSyncStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private handleStopSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStopSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 367
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 368
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    const-string v2, "MessageApp"

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "RCSDATA"

    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "VVMDATA"

    .line 373
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_0

    .line 371
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V
    .locals 13

    .line 489
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleUpdateFromDeviceFtUriFetch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 495
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchIndividualUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    .line 496
    iget-wide v4, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    .line 498
    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMPDUActionStatus(J)I

    move-result v10

    .line 522
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V

    if-ne v10, v9, :cond_4

    .line 524
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v3, 0x11

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v12

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPDUActionStatus(J)I

    move-result v8

    .line 501
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v8, v9, :cond_2

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v3, "all MMS parts updated, add parts to download list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    move-object v3, v0

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V

    :cond_2
    move v2, v8

    goto :goto_1

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSPDUActionStatus(J)I

    move-result v10

    .line 512
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V

    if-ne v10, v9, :cond_4

    .line 514
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v3, "all RCS parts updated, add parts to download list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v3, 0x1

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v12

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    move v2, v10

    :goto_1
    if-ne v2, v9, :cond_5

    .line 533
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NormalSync action with listsize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_2

    .line 538
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v0, :cond_7

    .line 539
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    .line 540
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPartType(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 541
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNotifyToMsgAppFetched(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V

    goto :goto_2

    .line 543
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mAppType:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageOnFetchUrlSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 546
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mAppType:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageOnFetchUrlSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private notifyVVMNormalSyncStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "VVMDATA"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const-string v2, "VVMDATA"

    const-string v3, "VVMDATA"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->IGNORED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "GREETING"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const-string v1, "VVMDATA"

    const-string v2, "GREETING"

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->IGNORED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onAdhocV2tPayloadDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    .line 1661
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsAdhocV2t:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1664
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 1665
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onAdhocV2tPayloadDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onBufferDBReadBatch(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private onBulkCreationComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1619
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1620
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1625
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1629
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    .line 1631
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v1, v1

    .line 1632
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1633
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 1637
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v3, :cond_3

    .line 1638
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v3, :cond_3

    .line 1640
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1639
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    .line 1641
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    .line 1642
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    const-string v4, ""

    .line 1643
    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->path:Ljava/lang/String;

    .line 1644
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 1646
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setReference(Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 1647
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    .line 1649
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 1621
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "DBchange list is empty: do nothting "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBulkFlagUpdateComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 4

    .line 1045
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1049
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1050
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v2, :cond_1

    .line 1051
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 1053
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 1054
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1055
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    .line 1056
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    .line 1055
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->bulkOpTreatSuccessIndividualResponse(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    if-eqz v2, :cond_2

    .line 1058
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    if-eqz v2, :cond_2

    .line 1059
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/ServiceException;->variables:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1062
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/common/data/ServiceException;->variables:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1061
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    .line 1046
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "onBulkFlagUpdateComplete: invalid return results"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCloudDeleteObjectFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 1015
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 1019
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 1020
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 1022
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNotifyAppOnUpdateCloudFail()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x11

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 1028
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onCloudNormalSyncObjectDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 7

    .line 1125
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1128
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v2

    .line 1129
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-boolean v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsGoforwardSync:Z

    .line 1130
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 1131
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    return-void

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 1136
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0x22

    if-eq v1, v2, :cond_7

    const/16 v2, 0x26

    if-eq v1, v2, :cond_6

    const/4 p1, 0x3

    if-eq v1, p1, :cond_5

    const/4 p1, 0x4

    if-eq v1, p1, :cond_4

    const/16 p1, 0x11

    if-eq v1, p1, :cond_3

    const/16 p1, 0x12

    if-eq v1, p1, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1157
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNormalSyncObjectRcsImdnDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    goto :goto_0

    .line 1163
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleNormalSyncDownloadedVVMGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    goto :goto_0

    .line 1160
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleNormalSyncDownloadedVVMMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    goto :goto_0

    .line 1147
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleNormalSyncObjectMmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    goto :goto_0

    .line 1142
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleNormalSyncObjectSmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    goto :goto_0

    .line 1169
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyConferenceInfo(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;Z)V

    goto :goto_0

    .line 1166
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    goto :goto_0

    .line 1153
    :cond_8
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNormalSyncObjectRcsMessageDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCloudNotificationReceivedUnknownType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 12

    .line 1177
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getNotificationList()[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 1179
    array-length v1, v0

    if-nez v1, :cond_1

    .line 1181
    :cond_0
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nc/data/NotificationList;-><init>()V

    filled-new-array {v0}, [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    move-result-object v0

    .line 1183
    :cond_1
    aget-object v1, v0, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getMcsNmsEventList()Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    move-result-object p1

    iput-object p1, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    .line 1185
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    if-nez v0, :cond_3

    .line 1187
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    return-void

    .line 1190
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGoForwardSyncSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    move v3, v2

    .line 1192
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_c

    .line 1193
    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v4, :cond_b

    .line 1194
    iget-object v5, v4, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v5, :cond_b

    move v5, v2

    .line 1195
    :goto_2
    iget-object v6, v4, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v7, v6

    if-ge v5, v7, :cond_b

    .line 1196
    aget-object v6, v6, v5

    .line 1197
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCloudNotificationReceivedUnknownType, ChangedObj:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    iget-object v9, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    const/4 v10, 0x0

    const-string v11, "not null"

    if-nez v9, :cond_5

    move-object v9, v10

    goto :goto_3

    :cond_5
    move-object v9, v11

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " DeletedObj:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    iget-object v9, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-nez v9, :cond_6

    move-object v9, v10

    goto :goto_4

    :cond_6
    move-object v9, v11

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ExpiredObj:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    iget-object v9, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->expiredObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    move-object v10, v11

    :goto_5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " shouldSkipDeletedObjt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsGoforwardSync:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1197
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v7, :cond_8

    .line 1203
    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {p0, v7, p1, v8}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    .line 1206
    :cond_8
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v7, :cond_9

    if-nez v1, :cond_9

    .line 1207
    invoke-virtual {p0, v7, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 1209
    :cond_9
    iget-object v6, v6, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->expiredObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v6, :cond_a

    .line 1210
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1215
    :cond_c
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1218
    :cond_d
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    if-eqz p1, :cond_e

    .line 1219
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendCloudUnSyncedUpdate()V

    .line 1220
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    :cond_e
    return-void
.end method

.method private onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1228
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 1233
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1230
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1242
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1239
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    :goto_0
    return-void
.end method

.method private onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    .line 1250
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1253
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1254
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/16 v4, 0xe

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1271
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1259
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1256
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1265
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1277
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1286
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 1280
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onGroupSMSUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1083
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1086
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1091
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_1

    .line 1089
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1299
    :cond_0
    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getIsFullSync()Z

    move-result v5

    if-eqz p1, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 1302
    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    .line 1301
    invoke-virtual {v0, p2, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V

    goto :goto_0

    .line 1304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 1305
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6fffffff

    .line 1304
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1307
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 1308
    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 1320
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_3
    const-string v1, "VVMDATA"

    const/4 v0, 0x0

    if-nez v5, :cond_4

    .line 1323
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1324
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setVVMPendingRequestCounts(Z)V

    .line 1326
    :cond_5
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "GREETING"

    move-object v2, v0

    goto :goto_1

    .line 1328
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNormalVVMSyncing()Z

    move-result v2

    const-string v4, "VVMDATA"

    if-eqz v2, :cond_7

    .line 1329
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v5, "Actually Normal Sync Completion"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V

    move v5, v0

    :cond_7
    move-object v2, v4

    .line 1333
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    if-eqz p1, :cond_8

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    :goto_2
    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v1, "MessageApp"

    const-string v2, "MSG_ALL"

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    goto :goto_4

    .line 1315
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v1, "MessageApp"

    const-string v2, "MSG_ALL"

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V

    .line 1335
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onHandlePendingNmsEvent()V

    .line 1338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Send a to init sync termial flag(RowId = -1) to messaging app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v3, "MessageApp"

    const-string v4, "SMS"

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_c
    return-void
.end method

.method private onMailBoxReset()V
    .locals 0

    .line 1096
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    .line 1097
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->startInitialSyncDBCopyTask()V

    .line 1098
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onMailBoxResetBufferDbDone()V

    return-void
.end method

.method private onNotifyToMsgAppFetched(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onNotifyToMsgAppFetched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    .line 555
    iget v1, p2, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-wide v2, p2, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onMmsPayloadUpdateWithDB(JLjava/lang/String;)V

    .line 558
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingUrlFetch()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 559
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    if-eq v0, p2, :cond_2

    .line 560
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->processDownloadComplete(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onServiceRestarted()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 308
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method private onUpdateFromCloud(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6

    .line 868
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromCloud: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsGoforwardSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 869
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 872
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$2;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 994
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onAdhocV2tPayloadDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 981
    :pswitch_2
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleSearchObjectForVVM(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryPendingVVMUrlFetch(I)I

    move-result v0

    .line 983
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendUnDownloadedMessage pendingVVMCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    .line 986
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VVMDATA"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->downloadMessageOnFetchUrlSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleSyncSummaryComplete(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 978
    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleSearchObjectForVVM(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto/16 :goto_1

    .line 975
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBulkCreationComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 972
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBulkFlagUpdateComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 969
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleVvmQuotaInfo(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 966
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleVvmProfileDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 961
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudDeleteObjectFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 958
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUploadFailureHandling(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 955
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 952
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudNotificationReceivedUnknownType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 949
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 943
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onMailBoxReset()V

    goto/16 :goto_1

    .line 938
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedImdns(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 935
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 932
    :pswitch_10
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto/16 :goto_1

    .line 929
    :pswitch_11
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudNormalSyncObjectDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto/16 :goto_1

    .line 925
    :pswitch_12
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 921
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_1

    .line 918
    :pswitch_14
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    goto/16 :goto_1

    .line 905
    :pswitch_15
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    .line 906
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg download complete, cmsEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uploadStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_2

    return-void

    .line 915
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_1

    .line 895
    :pswitch_16
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result v0

    .line 896
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    .line 897
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALL_PAYLOAD_NOTIFY pendingMMScount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 899
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->processDownloadComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 901
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendPayloadObject(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto :goto_1

    .line 891
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_1

    .line 888
    :pswitch_18
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_1

    .line 883
    :pswitch_19
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_1

    .line 878
    :pswitch_1a
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleSearchObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_1

    .line 874
    :pswitch_1b
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onUpdateFromDeviceLegacy()V
    .locals 0

    .line 0
    return-void
.end method

.method private onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 2

    .line 600
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 617
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceMsgAppFetchFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 631
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    :goto_0
    return-void
.end method

.method private onUploadFailureHandling(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1070
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 1078
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onWorkingStatusChanged(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWorkingStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$2;->$SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->onUpdateCmsConfigInitSyncDataTtl()V

    .line 408
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateCmsConfig()V

    .line 409
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateCmsConfig()V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateCmsConfig()V

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onMailBoxReset()V

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->restartService()V

    goto :goto_0

    .line 395
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDftMsgAppChangedToNative()V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendCloudUnSyncedUpdate()V

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleProvisionSuccess()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processDownloadComplete(Ljava/lang/String;)V
    .locals 6

    .line 1002
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 1004
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    .line 1005
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1007
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 1009
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    .line 1010
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-direct {v0, v3, p1, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1011
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private registerNmsEventListPushListener()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;-><init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method

.method private registerRegistrants()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerRegistrants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private restartService()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1358
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startInitialDBCopy()V
    .locals 3

    .line 1349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 1350
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInitialDBCopy(), mProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRCSDbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBufferDBloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1353
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bufferDbReadBatchMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x17

    .line 1578
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelMessageJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    .line 1545
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public createParticipant(Ljava/lang/String;)V
    .locals 3

    .line 1494
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 1497
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 3

    .line 1487
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 1490
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    .line 1562
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;)V
    .locals 3

    .line 1508
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 1511
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .locals 3

    .line 1501
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 1504
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public downloadMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x13

    .line 1570
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 264
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleUnStarredMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleStarredMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleCancelMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V

    goto/16 :goto_0

    .line 293
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleStartSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;Z)V

    goto/16 :goto_0

    .line 299
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->fetchingPendingMsg()V

    goto/16 :goto_0

    .line 235
    :pswitch_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->FetchingFail:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->appFetchingFailedMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    goto/16 :goto_0

    .line 296
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleStopSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    goto/16 :goto_0

    .line 290
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleStartSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;Z)V

    goto/16 :goto_0

    .line 285
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadBatch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleBufferDbReadMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleWipeOutMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleDownloadMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleUploadMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleDeleteMessageJson(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleUnReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleReadMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleSentMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleReceivedMessageJson(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_15
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onServiceRestarted()V

    goto :goto_0

    .line 243
    :pswitch_16
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleRCSDbReady()V

    goto :goto_0

    .line 226
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    goto :goto_0

    .line 218
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 219
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mTableindex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceSessionPartcpts(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onUpdateFromDeviceSession(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    goto :goto_0

    .line 215
    :pswitch_19
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceLegacy()V

    goto :goto_0

    .line 203
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 204
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onWorkingStatusChanged(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;)V

    goto :goto_0

    .line 199
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 200
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromCloud(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 208
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->startInitialSyncDBCopyTask()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    .line 1438
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferDBReadResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-static {p4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal syncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p5, :cond_1

    const-string p3, "0"

    :cond_1
    :try_start_0
    const-string p4, "MMS"

    .line 1451
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    const/4 p1, 0x4

    :goto_0
    move v3, p1

    move v9, v0

    goto/16 :goto_2

    :cond_2
    const-string p4, "SMS"

    .line 1453
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const-string p4, "FT"

    .line 1455
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_4

    move v3, v1

    move v9, v3

    goto :goto_2

    :cond_4
    const-string p4, "CHAT"

    .line 1458
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    move v9, v0

    move v3, v1

    goto :goto_2

    :cond_5
    const-string p4, "VVMDATA"

    .line 1460
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p4, "ADHOCV2T"

    .line 1461
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_1

    :cond_6
    const-string p4, "GREETING"

    .line 1463
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/16 p1, 0x12

    goto :goto_0

    :cond_7
    const-string p4, "RCS_SESSION"

    .line 1465
    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    const/16 p1, 0xa

    goto :goto_0

    .line 1468
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBufferDBReadResult wrong input type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_1
    const/16 p1, 0x11

    goto :goto_0

    .line 1472
    :goto_2
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1473
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v5, p2

    .line 1474
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v7, p2

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    if-eqz p5, :cond_a

    const/16 p2, 0x8

    .line 1477
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_a
    const/16 p2, 0x1a

    .line 1479
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1482
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onFtUriResponseJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    .line 1373
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    move-object/from16 v2, p2

    .line 1376
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1383
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1384
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArray size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-string v5, ""

    move v10, v2

    move-wide v7, v3

    move-object v9, v5

    move-wide v5, v7

    .line 1386
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 1387
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const-string v12, "id"

    .line 1389
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1390
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1391
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v3

    goto :goto_1

    .line 1393
    :cond_0
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v13, "onFtUriResponseJson id is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v12, "remoteDbId"

    .line 1396
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1397
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1398
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5

    goto :goto_2

    .line 1400
    :cond_1
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v13, "onFtUriResponseJson remoteId is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v12, "type"

    .line 1403
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1404
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1405
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 1407
    :cond_2
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v13, "onFtUriResponseJson messageType is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string v12, "bufferDbId"

    .line 1410
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1411
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1412
    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    goto :goto_4

    .line 1414
    :cond_3
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v12, "onFtUriResponseJson imsPartId is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v11, "MMS"

    .line 1419
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    :goto_5
    move v15, v11

    goto :goto_6

    :cond_4
    const-string v11, "FT"

    .line 1421
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    const-string v11, "VVMDATA"

    .line 1423
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x11

    goto :goto_5

    :cond_6
    const-string v11, "GREETING"

    .line 1425
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x12

    goto :goto_5

    :cond_7
    move v15, v2

    .line 1429
    :goto_6
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onFtUriResponseJson tableId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "localId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " remotId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " partId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance v11, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;

    move-object v14, v11

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-object/from16 v22, p1

    invoke-direct/range {v14 .. v22}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;-><init>(IJJJLjava/lang/String;)V

    const/16 v12, 0x1e

    .line 1431
    invoke-virtual {v1, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1378
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    .line 1521
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNativeMsgAppDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "onNativeChannelReceived: msg app not default application - Ignore native channel notification"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1525
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 1526
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRCSDbReady()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onRCSDbReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 1363
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReturnAppFetchingFailedMsg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MessageApp"

    .line 1515
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    const/4 v0, 0x0

    .line 1516
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public readMessageJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1538
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 1539
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public receivedMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xd

    .line 1530
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resyncPendingMsg()V
    .locals 1

    const/16 v0, 0x1c

    .line 1615
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sentMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    .line 1534
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public starredRCSMessageList(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x20

    .line 1550
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAppTriggerMessageSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1594
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartDeltaSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1596
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "error parsing startDeltaSync json value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0x1d

    .line 1599
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAppTriggerMessageSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1585
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "error parsing startfullsync json value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0x18

    .line 1588
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAppTriggerMessageSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1607
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string p1, "error parsing startfullsync json value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0x19

    .line 1610
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public unReadMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 1558
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unStarredRCSMessageList(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x21

    .line 1554
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public uploadMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x12

    .line 1566
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public wipeOutMessageJson(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x14

    .line 1574
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
