.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;
.super Ljava/lang/Object;
.source "McsCreateLargeDataPolling.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

.field final synthetic val$channelURL:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->val$channelURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 17

    move-object/from16 v1, p0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 56
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onComplete: statusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 155
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-virtual {v2, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$2100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v2

    .line 158
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    move-object/from16 v4, p1

    invoke-static {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$2200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result v2

    .line 159
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$2300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_2

    .line 165
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    move-object/from16 v4, p1

    .line 58
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onComplete: decryptedData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v2

    goto :goto_2

    .line 66
    :cond_4
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)I

    move-result v3

    const-string v4, "decryptedData is empty"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :cond_5
    :goto_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v3, 0x0

    .line 73
    :try_start_0
    const-class v4, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_e

    .line 80
    iget-object v2, v0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 87
    :cond_6
    iget-boolean v4, v0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->ncListComplete:Z

    .line 89
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    .line 90
    iget-object v0, v0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 91
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v9

    .line 92
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onComplete: currIndex: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " savedIndex:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ncListComplete:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    cmp-long v0, v7, v13

    if-lez v0, :cond_7

    .line 94
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result v0

    .line 97
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v5

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 97
    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->insertContainer(Ljava/lang/Long;Lcom/sec/internal/omanetapi/nms/data/NmsEventList;ILjava/lang/Long;)V

    move v6, v0

    goto/16 :goto_4

    .line 100
    :cond_7
    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 101
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$800(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 102
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 103
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "onComplete: NmsEventList being processed"

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 105
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMcsNmsEventList(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 107
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 110
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v9

    .line 111
    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    .line 112
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->peekFirstIndex()J

    move-result-wide v13

    add-long v15, v9, v11

    cmp-long v0, v13, v15

    if-nez v0, :cond_b

    .line 114
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    .line 115
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->popFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_9

    .line 117
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleNmsEvent: firstEntry is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 120
    :cond_9
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onComplete: Process nmsEventList from the NotificationListContainer, savedIndex: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " currIndex:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    .line 123
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 124
    iget-object v5, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 125
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 126
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 127
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 128
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMcsNmsEventList(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 130
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1700(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 131
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1800(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v9

    .line 133
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$1900(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_4

    .line 140
    :cond_a
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscription url did not match with clientId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->access$2000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 143
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    const-wide/32 v5, 0xea60

    invoke-interface {v0, v2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    :cond_c
    if-eqz v4, :cond_d

    .line 147
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 151
    :cond_d
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->val$channelURL:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 81
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onComplete: response or nmsEventList is null"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 75
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onComplete: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)I

    move-result p0

    const-string v0, "onFail: IOException"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
