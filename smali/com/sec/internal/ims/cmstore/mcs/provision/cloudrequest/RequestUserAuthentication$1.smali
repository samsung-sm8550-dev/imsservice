.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;
.super Ljava/lang/Object;
.source "RequestUserAuthentication.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$consentContext:Ljava/lang/String;

.field final synthetic val$isInternalRegistration:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$consentContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$isInternalRegistration:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8

    const-string v0, "oasis_server_root"

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    .line 61
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "consent_context"

    .line 62
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$consentContext:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strBody: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const-string v6, ""

    if-ne v2, v4, :cond_3

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1, v1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 72
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "auth_code"

    .line 73
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth_code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAuthCode(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oasis server root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerRoot(Ljava/lang/String;)V

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v0, 0xca

    const/4 v4, 0x1

    if-ne v2, v0, :cond_8

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 92
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 93
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1, v1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 95
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, "registration_code"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registration code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$isInternalRegistration:Ljava/lang/Boolean;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    const/16 v0, 0x384

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto/16 :goto_2

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$consentContext:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "validity"

    .line 103
    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 104
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRegCode(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setRegistrationCodeValidityTimer(J)V

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_2

    .line 114
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_2

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 117
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    if-lez p1, :cond_a

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 124
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I

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

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
