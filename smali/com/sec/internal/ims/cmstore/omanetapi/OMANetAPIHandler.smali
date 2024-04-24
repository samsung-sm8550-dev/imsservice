.class public Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
.super Landroid/os/Handler;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    }
.end annotation


# static fields
.field private static final EVENT_APP_DATA_SYNC:I = 0x6

.field public static final EVENT_CHECK_SUBSCRIPTION_CHANNEL:I = 0x12

.field private static final EVENT_DEVICE_DATA_UPDATE:I = 0x5

.field public static final EVENT_FCM_RETRY_ON_EMPTY_FCMTOKEN:I = 0x14

.field private static final EVENT_INITSYNC_DATA_DOWNLOAD:I = 0x7

.field private static final EVENT_INITSYNC_DATA_UPLOAD:I = 0x8

.field private static final EVENT_MCS_PAUSE_CMN_NETAPI:I = 0x11

.field private static final EVENT_MCS_RESUME_CMN_NETAPI:I = 0x10

.field private static final EVENT_MCS_START_CMN_NETAPI:I = 0xe

.field private static final EVENT_MCS_STOP_CMN_NETAPI:I = 0xf

.field private static final EVENT_NORMALSYNC_DATA_DOWNLOAD:I = 0x9

.field private static final EVENT_PAUSE_CMN_NETAPI:I = 0x3

.field private static final EVENT_PAUSE_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xb

.field private static final EVENT_RESETBOX_START_CMN_NETAPI:I = 0xa

.field private static final EVENT_RESUME_CMN_NETAPI:I = 0x2

.field private static final EVENT_RESUME_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xc

.field private static final EVENT_START_CMN_NETAPI:I = 0x1

.field private static final EVENT_STOP_CMN_NETAPI:I = 0x4

.field private static final EVENT_STOP_INITSYNC_AS_COMPLETE:I = 0xd

.field public static final EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED:I = 0x13


# instance fields
.field public TAG:Ljava/lang/String;

.field private mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mContext:Landroid/content/Context;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIsCmsMcsEnabled:Z

.field private mIsFallbackProvisionInProcess:Z

.field private mIsRunning:Z

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLooper:Landroid/os/Looper;

.field private mPhoneId:I

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mSyncFailNotifyReq:Z

.field private final mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRunning(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresumeHandlers(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7

    .line 89
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    .line 90
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 91
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 93
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 95
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    .line 97
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelScheduler()V

    .line 99
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 100
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    return-void
.end method

.method private isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 630
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 631
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    if-nez p1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 729
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOperationsComplete operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    .line 651
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p2

    .line 649
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 652
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 653
    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_0

    .line 655
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 656
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 657
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_UPLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 658
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 660
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 657
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 662
    :cond_1
    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pauseAllSyncHandler()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 446
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 450
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 452
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    goto :goto_1

    .line 455
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 456
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 457
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 458
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->pause()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 1

    .line 668
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 669
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    .line 670
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 671
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p2

    .line 668
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    :cond_0
    return-void
.end method

.method private resumeAllSyncHandler()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 405
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 409
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 411
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 414
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 415
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 416
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 417
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeAllSyncHandlerByLine(Ljava/lang/String;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 367
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 371
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 373
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 376
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 379
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 1

    .line 333
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 340
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    return-void
.end method

.method private resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeHandlers mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPollingAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 345
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 351
    :cond_0
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz p1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    :cond_1
    return-void
.end method

.method private resumeSingleHandler(Landroid/os/Handler;)V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeSingleHandler , isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 637
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopSendingAPIwhenNetworklost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz p0, :cond_1

    .line 639
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 640
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 641
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 7

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpdateToHandlers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 467
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 468
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 469
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string/jumbo v2, "sendDeviceUpdateToHandlers get handler : "

    const/4 v3, 0x0

    if-lez p1, :cond_3

    .line 485
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 486
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type = msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, p1, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 490
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 494
    :cond_3
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 495
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = vvm"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 500
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 501
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    :cond_4
    return-void
.end method

.method private sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadToDataChangeHandlers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 511
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 512
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 539
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 542
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 535
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 528
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 518
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 547
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 552
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 10

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendToHandlerInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 561
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 562
    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 564
    iget v3, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v4, 0x11

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 616
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v2

    .line 618
    invoke-virtual {v2, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_1

    .line 600
    :cond_0
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 601
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v4, v2, v9}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 602
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 604
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 605
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_0

    .line 608
    :cond_1
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 590
    :cond_2
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 591
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v4, v2, v9}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 592
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    .line 593
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto/16 :goto_0

    .line 596
    :cond_3
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :goto_2
    move-object v2, v4

    goto/16 :goto_1

    .line 571
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 572
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_3

    .line 574
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    :goto_3
    move-object v9, v3

    .line 576
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 577
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_6

    .line 578
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto/16 :goto_0

    .line 581
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 582
    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 583
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 585
    :cond_7
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    .line 613
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    return-void

    .line 622
    :cond_9
    invoke-direct {p0, v2, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 623
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 625
    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 678
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private startAllSyncHandler()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 386
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 390
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 392
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->start()V

    goto :goto_1

    .line 395
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 396
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 397
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 398
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private stopAllSyncHandler()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 424
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllSyncHandlerInstances()V

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 429
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 431
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->stop()V

    goto :goto_1

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDataChangeHandlerInstances()V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 436
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 438
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->stop()V

    goto :goto_2

    .line 440
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDeviceDataUpdateHandlerInstances()V

    return-void
.end method

.method private stopInitSyncAsComplete()V
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v1

    const/4 v2, 0x0

    .line 1019
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    return-void
.end method


# virtual methods
.method public deleteNotificationForDMAChange()V
    .locals 5

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "deleteNotificationForDMAChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;-><init>()V

    const-string v1, "NONDMA"

    .line 924
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 925
    iput-boolean v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 926
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 927
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 928
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 927
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 929
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNotificationForDMAChange: updateMessage: channelDeleteData.channelUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " channelDeleteData.deleteReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " channelDeleteData.isNeedRecreateChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteNotificationSubscriptionResource()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :cond_0
    return-void
.end method

.method public handleLargeDataPolling()V
    .locals 4

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLargeDataPolling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 1012
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 1011
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1013
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->logWorkingStatus()V

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 324
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onStartFcmRetry()V

    goto/16 :goto_2

    .line 315
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED: update success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelLifetimeUpdateComplete()V

    goto/16 :goto_2

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_2

    .line 310
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_CHECK_SUBSCRIPTION_CHANNEL: update"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_2

    .line 290
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_PAUSE_CMN_NETAPI: pause"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 292
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 293
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 297
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_MCS_RESUME_CMN_NETAPI: resume isTokenRefresh:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 300
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeMcsAfterTokenRefresh()V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 306
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto/16 :goto_2

    .line 282
    :pswitch_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_STOP_CMN_NETAPI: stop"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 284
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 285
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    .line 286
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    goto/16 :goto_2

    .line 264
    :pswitch_7
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 276
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_START_CMN_NETAPI: start"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    goto/16 :goto_2

    .line 260
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopInitSyncAsComplete()V

    goto/16 :goto_2

    .line 189
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 190
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 191
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 193
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 201
    :cond_2
    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v1, :cond_d

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 196
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v1, :cond_d

    .line 198
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "no failed API before, resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 168
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-nez v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Pause polling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    if-nez v0, :cond_6

    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsServicePaused:Z

    if-nez p1, :cond_6

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string p1, "Should only disable polling"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 179
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 182
    :cond_7
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-nez p1, :cond_d

    .line 183
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 220
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 221
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 223
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 224
    new-instance p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto/16 :goto_2

    .line 250
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_d

    .line 252
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 243
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_d

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 236
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_d

    .line 238
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 229
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_d

    .line 231
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 212
    :pswitch_10
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 213
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 214
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 216
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    goto/16 :goto_2

    .line 160
    :pswitch_11
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 161
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 164
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto :goto_2

    .line 149
    :pswitch_12
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez p1, :cond_d

    .line 150
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "Resume all handlers"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 155
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto :goto_2

    .line 128
    :pswitch_13
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 129
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 130
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 143
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 144
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->startAllSyncHandler()V

    :cond_d
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
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

.method protected logWorkingStatus()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mIsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFallbackProvisionInProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 864
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 831
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onDeviceFlagUpdateSchedulerStarted()V

    return-void
.end method

.method public onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check fallback to provision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "provision is in process, wait until next resume"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseMcsForDeregi()V

    .line 958
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onPauseCMNNetApi()V

    .line 959
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 960
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    :cond_2
    return-void
.end method

.method public onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitSyncCompleted getUserTbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onInitialDBSyncCompleted()V

    .line 821
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 826
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitUploadStarted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 807
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitialSyncStarted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLineSITRefreshed(Ljava/lang/String;)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineSITRefreshed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandlerByLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 844
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 849
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onNormalSyncComplete(Z)V
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-nez v0, :cond_0

    .line 1029
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onVVMNormalSyncComplete(Z)V

    :cond_0
    return-void
.end method

.method public onNotificationObjectDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaFailExceedMaxCount()V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onOneDeviceFlagUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 859
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 869
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPauseCMNNetApi()V
    .locals 1

    .line 936
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 937
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 939
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onPauseCMNNetApiWithResumeDelay(I)V
    .locals 5

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause all net API, resume all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 946
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    .line 947
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 948
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncFailed mSyncFailNotifyReq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    if-nez v0, :cond_0

    .line 838
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_0
    return-void
.end method

.method public onWipeOutResetSyncHandler()V
    .locals 1

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    .line 798
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stop()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public pauseMcsForDeregi()V
    .locals 2

    .line 746
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_ON_DEREGISTRATION:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    return-void
.end method

.method public pauseforMcs()V
    .locals 1

    const/16 v0, 0x11

    .line 767
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 761
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 762
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 763
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 1

    .line 1000
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_0

    .line 1003
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :goto_0
    return-void
.end method

.method public resetChannelScheduler()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetChannelScheduler: isCmsMcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 114
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    :goto_0
    return-void
.end method

.method public resetChannelState()V
    .locals 1

    .line 1023
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public resumeMcsAfterTokenRefresh()V
    .locals 2

    .line 752
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME_ON_FCM_TOKEN_REFRESH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 753
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resumeforMcs(Z)V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeforMcs isTokenRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    .line 783
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 784
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 776
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 777
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 684
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setIsFullSyncParam(Z)V

    .line 685
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 690
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resetSearchParam()V

    .line 691
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x7

    .line 706
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 707
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x9

    .line 712
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 713
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x5

    .line 700
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x8

    .line 718
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 719
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 734
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public start_resetBox()V
    .locals 1

    const/16 v0, 0xa

    .line 738
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startforMcs()V
    .locals 1

    const/16 v0, 0xe

    .line 742
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x4

    .line 789
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 696
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    return-void
.end method

.method public stopforMcs()V
    .locals 1

    const/16 v0, 0xf

    .line 793
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    .line 900
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayedSubscriptionChannel()V
    .locals 3

    .line 988
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_0

    .line 989
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    goto :goto_0

    .line 991
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    :goto_0
    return-void
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 911
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateSubscriptionChannel()V
    .locals 3

    .line 996
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/32 v1, 0xea60

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    return-void
.end method
