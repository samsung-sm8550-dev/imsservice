.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;
.super Ljava/lang/Object;
.source "RequestUserRegistration.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 6

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strBody: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    const-string v1, ""

    .line 52
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    const-string v0, "auth_code"

    .line 56
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth_code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAuthCode(Ljava/lang/String;)V

    const-string v0, "oasis_server_root"

    .line 60
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oasis server root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerRoot(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

    move-result v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;)I

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

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
