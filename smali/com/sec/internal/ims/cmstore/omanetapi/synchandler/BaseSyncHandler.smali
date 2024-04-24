.class public abstract Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.super Landroid/os/Handler;
.source "BaseSyncHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    }
.end annotation


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private TAG:Ljava/lang/String;

.field private final TAG_CN:Ljava/lang/String;

.field protected isCmsEnabled:Z

.field protected final mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field protected mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

.field protected final mBulkUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

.field mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

.field protected mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field protected final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field protected mIsFTThumbnailDownload:Z

.field protected mIsFullSync:Z

.field protected mIsHandlerRunning:Z

.field protected mIsSearchFinished:Z

.field protected final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

.field protected mSearchCursor:Ljava/lang/String;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field protected final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field protected final mWorkingDownloadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorkingDownloadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mWorkingUploadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG_CN:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->NO_RETRY_AFTER_VALUE:I

    .line 80
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 81
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    .line 97
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 100
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p3, :cond_0

    .line 102
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p3, v0, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 103
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p1, p2, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 108
    :goto_0
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 109
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 110
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 111
    iput-boolean p8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_1

    .line 115
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 117
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, p5, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string p3, "initsync_status"

    invoke-virtual {p1, p5, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 119
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    :cond_3
    return-void
.end method

.method private checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkIndividualResponseCodeUpload: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 907
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 908
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 913
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 914
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v0

    .line 915
    iget-short v3, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    const/16 v4, 0x193

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 917
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    iget-short v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    .line 918
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->bulkOpTreatSuccessIndividualResponse(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 920
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 927
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 896
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 898
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "DBchange list is empty: do nothting "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 499
    instance-of v0, p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_2

    .line 500
    move-object v0, p2

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 501
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 506
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update cursor: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], and event type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 512
    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v1

    .line 519
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoHandlerEventOnFailure isGbaSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 520
    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v0, "gotoHandlerEventOnFailure for TMO fail case"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 526
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 597
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz p1, :cond_0

    .line 600
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    const/4 p1, 0x0

    .line 601
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 2

    .line 170
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 171
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 174
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_WORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 177
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 179
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_UPLOADWORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->what:I

    .line 181
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendToWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 162
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 163
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_QUEUE_BULKUPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    .line 165
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected checkNextBulkUploadWorkingQueue()V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextBulkUploadWorkingQueue: mBulkUploadQueue is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->makeBulkUploadparameter()V

    .line 841
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    goto :goto_0

    .line 843
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromDownloadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 752
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekDownloadQueue()Landroid/util/Pair;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNextMsgFromDownloadWorkingQueue: fileReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 754
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "checkNextMsgFromDownloadWorkingQueue largefile download case "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkNextMsgFromDownloadWorkingQueue httpparam null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 761
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    .line 762
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 764
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 768
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v2, :cond_3

    .line 769
    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 770
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 779
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 775
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 777
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 782
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 783
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_7

    .line 784
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 786
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 788
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 789
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method protected checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNextMsgFromUploadWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 797
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekUploadQueue()Landroid/util/Pair;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNextMsgFromUploadWorkingQueue: fileReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 799
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "checkNextMsgFromUploadWorkingQueue: http param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 805
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void

    .line 809
    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 811
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_3

    .line 812
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 813
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 815
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 821
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 818
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 819
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 825
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 826
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_7

    .line 827
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 829
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 831
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 832
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public getIsFullSyncParam()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 196
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "empty queue: "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 462
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_18

    .line 463
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 464
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 467
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    if-eqz v1, :cond_1

    .line 468
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 469
    :cond_1
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    if-eqz v1, :cond_2

    .line 470
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 471
    :cond_2
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    if-eqz v1, :cond_4

    .line 473
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_3

    .line 475
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->FALLBACK_MESSAGES_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 476
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 477
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 479
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 481
    :cond_4
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateFile;

    if-eqz v1, :cond_5

    .line 482
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FT_UPLOAD_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 483
    :cond_5
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetLargeFile;

    if-nez v1, :cond_7

    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageHeadLargeFile;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 487
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    goto :goto_1

    .line 485
    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    .line 489
    :goto_1
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 455
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz p1, :cond_18

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z

    goto/16 :goto_3

    .line 449
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_18

    .line 450
    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 451
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_3

    .line 440
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_8

    move v4, v5

    .line 441
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 442
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 443
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_18

    if-eqz v4, :cond_18

    .line 444
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 445
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 424
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_9

    move v4, v5

    .line 425
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 426
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    if-eqz v4, :cond_18

    .line 428
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 429
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_STARTED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 430
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_UPLOAD_STARTED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 431
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 428
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitUploadStarted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 433
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_18

    .line 434
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 415
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_a

    move v4, v5

    .line 416
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 417
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 418
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_18

    if-eqz v4, :cond_18

    .line 419
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 412
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_3

    .line 406
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "pop_up"

    invoke-interface {p0, p1, v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 397
    :pswitch_9
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 398
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 400
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_b

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    .line 401
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_b
    const-wide/16 v1, 0x0

    .line 403
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_3

    .line 391
    :pswitch_a
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_18

    .line 392
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    .line 393
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto/16 :goto_3

    .line 383
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ALL_PAYLOAD_NOTIFY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 384
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 387
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    .line 383
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 377
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 378
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    .line 377
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 372
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 373
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 374
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 361
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_18

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 363
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 364
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFTThumbnailDownload:Z

    if-nez p1, :cond_c

    .line 365
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pollFromDownloadSet()V

    .line 366
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 368
    :cond_c
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 349
    :pswitch_f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 351
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_d

    .line 352
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 354
    :cond_d
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 357
    :cond_e
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 332
    :pswitch_10
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_UPLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 334
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 336
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 332
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 338
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 339
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 340
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_BULK_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    .line 341
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void

    .line 344
    :cond_f
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-nez p1, :cond_18

    .line 345
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 327
    :pswitch_11
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 328
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->fallbackOneMessageUplaod(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 329
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 321
    :pswitch_12
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 322
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 323
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkIndividualResponseCodeUpload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 324
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    goto/16 :goto_3

    .line 317
    :pswitch_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 318
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 312
    :pswitch_14
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 313
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 314
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 304
    :pswitch_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 306
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 308
    :cond_10
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_3

    .line 298
    :pswitch_16
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 284
    :pswitch_17
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 286
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 289
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 291
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 292
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 285
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 294
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 260
    :pswitch_18
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 261
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 262
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 263
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 264
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p1, :cond_11

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mFileHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->stop()V

    .line 267
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, ""

    .line 268
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 270
    :cond_12
    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 271
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 273
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 274
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 275
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 276
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 277
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 278
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 256
    :pswitch_19
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    goto/16 :goto_3

    .line 232
    :pswitch_1a
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-nez p1, :cond_18

    .line 233
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 234
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    if-eqz p1, :cond_16

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 236
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromDownloadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 238
    :cond_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 239
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextMsgFromUploadWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 241
    :cond_14
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    if-eqz p1, :cond_15

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->retryBulkUploadRequest()V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 244
    :cond_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_18

    .line 245
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 249
    :cond_16
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto/16 :goto_3

    .line 222
    :pswitch_1b
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 223
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 224
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 226
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->SYNC_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 227
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 216
    :pswitch_1c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 218
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 219
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    goto :goto_3

    .line 206
    :pswitch_1d
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_17

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 213
    :cond_17
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    goto :goto_3

    .line 198
    :pswitch_1e
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 199
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onInitialSyncStarted()V

    .line 200
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v13, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 202
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    :cond_18
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
        :pswitch_d
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

.method protected logWorkingStatus()V
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mSyncMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsHandlerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsSearchFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    .line 883
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingDownloadSet size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    .line 884
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWorkingUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    .line 885
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBulkUploadQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    .line 886
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    .line 887
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 878
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract makeBulkUploadparameter()V
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 658
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedCall code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlow event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 703
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    instance-of v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-nez v0, :cond_1

    .line 707
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message not ParamOMAresponseforBufDB"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 711
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 714
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 718
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 721
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 722
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 704
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    const-string p1, "onFixedFlowWithMessage message is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 616
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoveOnToNext  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 610
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", retry after isRetryEnabled: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 675
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 674
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 678
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-eqz p2, :cond_0

    .line 679
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 681
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 685
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 686
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 636
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 637
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 560
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end method

.method protected abstract peekDownloadQueue()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract peekUploadQueue()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected pollFromDownloadSet()V
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public resetSearchParam()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v3, "initsync_status"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSearchParam, cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 1

    .line 565
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected retryBulkUploadRequest()V
    .locals 4

    .line 848
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    return-void

    .line 854
    :cond_0
    instance-of v1, v0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v1, :cond_1

    .line 855
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    .line 856
    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->replaceUrlPrefix()V

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryBulkUploadRequest url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 863
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 861
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->checkNextBulkUploadWorkingQueue()V

    :goto_1
    return-void
.end method

.method protected abstract setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public setInitSyncComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsSearchFinished:Z

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 147
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->isCmsEnabled:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mWorkingDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldClearCursorUponInitSyncDone()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mSearchCursor:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 155
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->logWorkingStatus()V

    return-void
.end method

.method public setIsFullSyncParam(Z)V
    .locals 2

    .line 135
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    .line 136
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsFullSyncParam, mIsFullSync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsFullSync:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    return-void
.end method

.method protected abstract setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 1

    .line 869
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    if-nez v0, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG_CN:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mEventType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-nez p1, :cond_0

    .line 539
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 542
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 554
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 551
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_INIT_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 544
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->mIsHandlerRunning:Z

    .line 545
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 569
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
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

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 592
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
