.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FetchEapId"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpGetInfo(ILjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpPushParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->getImsiEap()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EAP_ID"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->getHttpGetResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;

    move-result-object p0

    return-object p0
.end method
