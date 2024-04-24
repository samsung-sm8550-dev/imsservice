.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;
.super Lcom/sec/internal/omanetapi/nms/AllSubscriptions;
.source "CloudMessageCreateSubscriptionChannel.java"


# static fields
.field private static final serialVersionUID:J = 0x305925178bd56ab4L


# instance fields
.field private TAG:Ljava/lang/String;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 7

    .line 39
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNcHost()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p6

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 46
    new-instance p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    invoke-direct {p4}, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;-><init>()V

    .line 48
    new-instance p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    invoke-direct {p6}, Lcom/sec/internal/omanetapi/common/data/CallbackReference;-><init>()V

    .line 50
    iput-object p2, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notifyURL:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "custom_data"

    .line 52
    iput-object v0, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->callbackData:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "abc"

    .line 54
    iput-object v0, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->callbackData:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    move-result-object v0

    iput-object v0, p6, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 59
    :goto_0
    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->callbackReference:Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    const p6, 0x15180

    .line 60
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->duration:Ljava/lang/Integer;

    const-string p6, ""

    .line 61
    iput-object p6, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->clientCorrelator:Ljava/lang/String;

    .line 62
    iput-object p3, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->restartToken:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyURL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request restartToken "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isGcmReplacePolling: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " needPresetSearchRemove"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p5, :cond_2

    .line 67
    new-instance p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 69
    new-instance p3, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {p3}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    filled-new-array {p3}, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    move-result-object p3

    const/4 p5, 0x0

    .line 70
    aget-object p5, p3, p5

    const-string v0, "PresetSearch"

    iput-object v0, p5, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string v0, "UPOneDotO"

    .line 71
    iput-object v0, p5, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 72
    iput-object p6, p5, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 73
    iput-object p3, p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 74
    iput-object p2, p4, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->filter:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 78
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    .line 79
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    iget-boolean p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    if-eqz p3, :cond_3

    .line 81
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 85
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initSubscribeRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    iget-boolean p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    if-eqz p3, :cond_5

    .line 87
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_5
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x1

    .line 91
    invoke-virtual {p0, p4, p2}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;Z)V

    .line 93
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;

    invoke-direct {p2, p0, p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->isCmsMcsEnabled:Z

    return p0
.end method
