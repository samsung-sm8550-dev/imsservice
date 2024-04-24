.class Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;
.super Ljava/lang/Object;
.source "WorkflowMcs.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->registerSyncStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V
    .locals 0

    .line 0
    return-void
.end method

.method public nmsEventListPushNotification(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncBlockfilterPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncConfigPushNotification(Ljava/lang/String;)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown configtype occur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->updateMcsAlias(Z)V

    :goto_0
    return-void
.end method

.method public syncContactPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncMessagePushNotification(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncStatusPushNotification(Ljava/lang/String;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncStatusPushNotification: status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "enableMcs"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->requestMcsReAuthentication()V

    goto :goto_0

    :cond_0
    const-string v0, "disableMcs"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDeRegistrationCompleted()V

    .line 226
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pushType"

    const-string/jumbo v3, "syncStatus"

    .line 228
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key"

    const-string/jumbo v3, "status"

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    .line 230
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    :cond_2
    return-void
.end method
