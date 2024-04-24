.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;
.super Ljava/lang/Object;
.source "RequestGetUser.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$msisdn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->val$msisdn:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8

    const-string v0, "consent_context"

    const-string/jumbo v1, "root_client_id"

    .line 43
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 45
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strbody: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    const-string p1, ""

    .line 50
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 53
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :goto_0
    const-string v2, "mdn"

    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->val$msisdn:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x194

    if-ne v3, v0, :cond_4

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_1

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    if-lez p1, :cond_6

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_1

    .line 77
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request onFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
