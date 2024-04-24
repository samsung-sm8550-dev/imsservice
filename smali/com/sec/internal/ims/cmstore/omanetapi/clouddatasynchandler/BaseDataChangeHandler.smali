.class public abstract Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
.super Landroid/os/Handler;
.source "BaseDataChangeHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private TAG:Ljava/lang/String;

.field protected isCmsEnabled:Z

.field protected final mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field mFileDownloadHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

.field protected mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field protected mIsFTThumbnailDownload:Z

.field protected mIsHandlerRunning:Z

.field protected final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field protected final mWorkingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->NO_RETRY_AFTER_VALUE:I

    .line 56
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->isCmsEnabled:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsFTThumbnailDownload:Z

    .line 64
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 67
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->isCmsEnabled:Z

    if-eqz p3, :cond_0

    .line 69
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p3, v0, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    goto :goto_0

    .line 71
    :cond_0
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {p3, v0, p7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 73
    :goto_0
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 75
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 76
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 77
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mFileDownloadHandler:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    return-void
.end method

.method private checkNonAdhocPayloadFail(Ljava/lang/Object;)Z
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNonAdhocPayloadFail isGbaSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 244
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_0
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 250
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 251
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 252
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ADHOC_PAYLOAD_DOWNLOAD_FAILED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 254
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 255
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoHandlerEventOnFailure: isRetryEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 235
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 299
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    const-string v0, "API in BaseDataChangeHandler succeed, ready to move on"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    const/4 p1, 0x0

    .line 304
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 2

    .line 262
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 263
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 265
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ADD_TO_WORKINGQUEUE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->what:I

    .line 267
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected checkNextMsgFromWorkingQueue()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 440
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->peekWorkingQueue()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsFTThumbnailDownload:Z

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 445
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    return-void

    .line 447
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    const-string v0, "checkNextMsgFromWorkingQueue largefile download case"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v2, :cond_3

    .line 453
    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    invoke-virtual {v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken()Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateToken is null, again using mLine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateToken(Ljava/lang/String;)Z

    move-result v1

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->updateServerRoot(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 467
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto :goto_1

    .line 470
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECTS_AND_PAYLOAD_DOWNLOAD_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->logWorkingStatus()V

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 91
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 212
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 213
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_8

    .line 214
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto/16 :goto_3

    .line 204
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 205
    check-cast p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 206
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 207
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 198
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz p1, :cond_8

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z

    goto/16 :goto_3

    .line 192
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 193
    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    goto/16 :goto_3

    .line 186
    :pswitch_5
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto/16 :goto_3

    .line 178
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 180
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 181
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto/16 :goto_3

    .line 174
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    const-string v0, "pop_up"

    invoke-interface {p0, p1, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 171
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    goto/16 :goto_3

    .line 168
    :pswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    goto/16 :goto_3

    .line 156
    :pswitch_a
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    .line 157
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 160
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 161
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 163
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    goto/16 :goto_3

    .line 152
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onNormalSyncComplete(Z)V

    .line 153
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ONE_LINE_NORMAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 144
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->NOTIFICATION_OBJECTS_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 146
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 145
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 149
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->NORMAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 137
    :pswitch_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ALL_PAYLOAD_NOTIFY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 138
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 141
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    .line 137
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto/16 :goto_3

    .line 123
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 125
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onNotificationObjectDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFTThumbnailDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsFTThumbnailDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsFTThumbnailDownload:Z

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 130
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->NOTIFICATION_ALL_PAYLOAD_DOWNLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    if-ne p1, v0, :cond_4

    .line 131
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FETCH_DOWNLOAD_DONE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 132
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-eqz p1, :cond_8

    .line 133
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto :goto_3

    .line 118
    :pswitch_f
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    goto :goto_3

    .line 115
    :pswitch_10
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    goto :goto_3

    .line 109
    :pswitch_11
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-nez p1, :cond_8

    .line 110
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto :goto_3

    .line 93
    :pswitch_12
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_7

    .line 95
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkingQueue empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNextMsgFromWorkingQueue()V

    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_3

    .line 97
    :cond_7
    :goto_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECTS_AND_PAYLOAD_DOWNLOAD_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
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

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mLine:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSyncMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHandlerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWorkingQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    .line 487
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 360
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mIsHandlerRunning:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

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

    .line 352
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNonAdhocPayloadFail(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :cond_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 1

    .line 370
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNonAdhocPayloadFail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlow event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 400
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " event is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

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

    .line 312
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->checkNonAdhocPayloadFail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 314
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " on Over Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " retryAfter "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->isCmsEnabled:Z

    if-eqz p2, :cond_0

    .line 381
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 383
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    const-string v0, "onOverRequest, go to session gen API if necessary"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {p2, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 387
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    const-string p1, "not used in this handler"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 333
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 334
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 275
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract peekWorkingQueue()Landroid/util/Pair;
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

.method public resume()V
    .locals 1

    .line 280
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    return-void
.end method

.method protected abstract setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
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

    .line 481
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 271
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_AND_PAYLOAD_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    .line 285
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    .line 419
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

    .line 430
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
