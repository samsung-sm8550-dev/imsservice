.class public Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;
.super Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;
.source "RequestRemoveSd.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mPhoneId:I

.field private final mSdClientId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->mPhoneId:I

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->TAG:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->mSdClientId:Ljava/lang/String;

    .line 25
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 26
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->mPhoneId:I

    .line 27
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->updateUrl()V

    .line 29
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 30
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/json"

    .line 29
    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->setCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method


# virtual methods
.method public updateUrl()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oapi/v1/device/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->mSdClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method
