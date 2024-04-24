.class Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;
.super Lcom/sec/internal/helper/State;
.source "CloudMessageServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const-string v0, "ServiceConnectedState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const-string v0, "ServiceConnectedState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnectedState, processMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RCSDATA"

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->cancelMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service is not binded yet"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 328
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 331
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 335
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    :try_start_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/ICentralMsgStoreService;->onDefaultSmsPackageChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    .line 339
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 342
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p0

    .line 237
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 240
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 305
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 310
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 312
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sec/ims/ICentralMsgStoreService;->manualSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception p0

    .line 317
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 320
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 293
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 295
    :try_start_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->createSession(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception p0

    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 301
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 281
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 283
    :try_start_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->createParticipant(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception p0

    .line 286
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 257
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 259
    :try_start_7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->readMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception p0

    .line 262
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 265
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 244
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 246
    :try_start_8
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception p0

    .line 250
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 218
    :pswitch_9
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 220
    :try_start_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception p0

    .line 224
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 227
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 206
    :pswitch_a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 208
    :try_start_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->sentMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto/16 :goto_0

    .line 194
    :pswitch_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 196
    :try_start_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->receivedMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_0

    :catch_b
    move-exception p0

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 202
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    goto :goto_0

    .line 181
    :pswitch_c
    :try_start_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$monDisableCms(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_0

    :catch_c
    move-exception p1

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisableRCS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 166
    :pswitch_d
    :try_start_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$monRCSDbReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_0

    :catch_d
    move-exception p1

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRCSDbReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 188
    :pswitch_e
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "lost service connection for unknow reason, retry connection "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
