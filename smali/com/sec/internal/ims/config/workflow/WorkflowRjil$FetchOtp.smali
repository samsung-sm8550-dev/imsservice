.class Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchOtp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "OTP"

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
