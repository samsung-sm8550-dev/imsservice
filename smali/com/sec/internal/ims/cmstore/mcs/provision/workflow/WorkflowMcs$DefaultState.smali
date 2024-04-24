.class Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "WorkflowMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "DefaultState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 346
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "DefaultState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState, processMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const/16 v3, 0xb

    const/16 v4, 0xa

    if-eq v0, v4, :cond_2

    const/4 p1, 0x0

    if-eq v0, v3, :cond_0

    move v1, p1

    goto/16 :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v3, p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v3, "msisdn is null"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mClientHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    .line 299
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v6, v5, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v5, v5, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "McsUser : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 302
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-boolean v3, v3, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v2, "mobile_ip"

    invoke-static {v0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fputmRequestType(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteringState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRegCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 v0, 0xc

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 308
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 v0, 0xd

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-ne v0, v1, :cond_c

    .line 311
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isValidAccessToken()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 312
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v3, "It\'s already MCS user"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 314
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmProvisionedState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 p1, 0x64

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteredState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 319
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 290
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteredState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 294
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 336
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->handleFailedEvent(II)V

    goto :goto_0

    .line 333
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->handleSucceededEvent(ILjava/lang/Object;)V

    :cond_c
    :goto_0
    return v1
.end method
